#!/usr/bin/env bash
#
# Source:
#   https://github.com/nntrn/espn-wiki
#
# Usage:
#
#    $  /path/to/espn-wiki/download-event-refs.sh 401548507 out
#                                                    │       │
#                                                    │       ╰──▶ [OPTIONAL] directory to write files to
#                                                    ╰──▶ [REQUIRED] event id

# shellcheck disable=SC2207,SC2068

EVENT_ID=${1:?}
EVENT_FILE=event-${EVENT_ID}.json
PATHS_FILE=${EVENT_ID}-paths.json
DOWNLOAD_SCRIPT=refs-${EVENT_ID}.sh
REF_FILE=ref-${EVENT_ID}.sh

OUTDIR=${2:-$HOME/.cache/espn-wiki}

mkdir -p $OUTDIR
cd $OUTDIR || exit 1

curl -o $EVENT_FILE \
  "https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/$EVENT_ID/competitions/$EVENT_ID"

jq 'if .error then (.error.message|halt_error(1)) else "" end' $EVENT_FILE

if [[ $? -ne 0 ]]; then
  exit 1
fi

jq '. as $data
| [paths]
| map( select(last == "$ref")| . as $path
| $data|getpath($path)|gsub("\\?.*";""))
| map({
    url: . ,
    output: (split(".com/.*nfl/";"x")|last|gsub("/";"-"))
  })' $EVENT_FILE >$PATHS_FILE

jq -r 'map( "[[ ! -f \(.output) ]] && curl -o \(.output) \(.url)" )
| join("\n")' $PATHS_FILE >$DOWNLOAD_SCRIPT

source $DOWNLOAD_SCRIPT

PREVIEW_FILES=($(jq -r 'map(.output)[]' $PATHS_FILE))

echo "$(
  jq -r -s '
  map(. as $data
  | "echo -e \"\\n## \(input_filename)\\n\\n\\`\\`\\`json\"\necho -e \($data|tojson|@sh)|jq|head -n 25\necho -e \"\\`\\`\\`\\n\"")
  | join("\n\n")' ${PREVIEW_FILES[@]}
)" >$REF_FILE

source $REF_FILE
