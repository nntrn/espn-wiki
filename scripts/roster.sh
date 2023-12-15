#!/usr/bin/env bash
#
# Fetch roster from NFL teams to build id map for athletes
#
# USAGE:
#   ./scripts/roster.sh OUTPUT-DIR
#
# EXAMPLE:
#    $ ./scripts/roster.sh data
#    [
#      {
#        "id": "3915373",
#        "team": "ATL",
#        "position": "S",
#        "fullName": "Micah Abernathy"
#      },
#      {
#        "id": "4401823",
#        "team": "ATL",
#        "position": "CB",
#        "fullName": "Dee Alford"
#      },
#      ...
#    ]
#
# AUTHOR: @nntrn, <https://github.com/nntrn/espn-wiki>
#

TEAM_API=https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams

if [[ -n $1 ]]; then
  mkdir -p $1
  OUTDIR=$1
else
  OUTDIR=$(mktemp -d)
fi

export OUTDIR TEAM_API

EVAL_STRING="$(
  curl -s $TEAM_API |
    jq -r '.sports[0] | .leagues[0].teams | sort_by(.team.id|tonumber)
      | map(.team|"curl -o \(env.OUTDIR)/\(.id).json \"\(env.TEAM_API)/\(.id)?enable=roster\"")
      | join("\n")'
)"

if [[ -n $EVAL_STRING ]]; then
  eval "$EVAL_STRING"
  cat $OUTDIR/[0-9]*.json |
    jq -s 'map(.team.abbreviation as $team | .team.athletes | 
      map({id, team:$team, position:.position.abbreviation, fullName})
    ) | flatten' >$OUTDIR/roster.json
  cat $OUTDIR/roster.json
else
  echo "An error occured"
fi
