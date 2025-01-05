# Pickem API

* [/apis/v1/challenges/**nfl-win-totals-2024**/groups/**GROUP_ID_WINTOTAL**?view=**allon**][1]  

* [/apis/v1/challenges/**nfl-eliminator-challenge-2024**/groups/**GROUP_ID_ELIMINATOR**?view=**chui_default_group**][2]

* [/apis/v1/challenges/**nfl-pigskin-pickem-2024**/groups/**GROUP_ID_PIGSKIN**?view=**pagetype_leaderboard**][3]


### Challenge Names
Replace 2024 with current season

* nfl-win-totals-2024
* nfl-eliminator-challenge-2024
* nfl-pigskin-pickem-2024

### Group Ids:

* **EXAMPLE_GROUP_ID_WINTOTAL**=3ea0845b-59d5-499b-97a0-2eb9d02e1cc9
* **EXAMPLE_GROUP_ID_ELIMINATOR**=ac72d269-e700-4efb-bcb1-269413d1a815
* **EXAMPLE_GROUP_ID_PIGSKIN**=19961d87-2563-4972-bdd3-de7e55ee26be

### View names

* allon
* chui_default
* chui_default_group
* chui_default_groupParticipationHistory
* chui_default_metadata
* chui_pagetype_group_picks
* pagetype_leaderboard


[1]: https://gambit-api.fantasy.espn.com/apis/v1/challenges/nfl-win-totals-2024/groups/3ea0845b-59d5-499b-97a0-2eb9d02e1cc9?view=allon
[2]: https://gambit-api.fantasy.espn.com/apis/v1/challenges/nfl-eliminator-challenge-2024/groups/ac72d269-e700-4efb-bcb1-269413d1a815?view=chui_default_group
[3]: https://gambit-api.fantasy.espn.com/apis/v1/challenges/nfl-pigskin-pickem-2024/groups/19961d87-2563-4972-bdd3-de7e55ee26be?view=pagetype_leaderboard


```sh
CURL_HEADER='
gambit-filter: {
  "filterSortId": { "value": null},
  "limit": 100,
  "offset": 0,
  "sortRank": {
    "sortAsc": true,
    "sortPriority": 1
  }
}'

API_PATH="apis/v1/challenges/nfl-pigskin-pickem-2024/groups/19961d87-2563-4972-bdd3-de7e55ee26be?view=pagetype_leaderboard"

curl "https://gambit-api.fantasy.espn.com/${API_PATH}" \
  -H "$CURL_HEADER"
```