# Get players

* [Get active players](#get-active-players)
* [Get all players](#get-all-players)
* [Get player fantasy stats (season)](#get-player-fantasy-stats-season)


## Get active players

* [/v2/sports/football/nfl/athletes?limit=7000][2]

### Useful for: 
* Getting current injury status 

### Example

<details>

```
{
  "athletes": [ 
    {
      "id": "4360438",
      "firstName": "Brandon",
      "lastName": "Aiyuk",
      "displayName": "Brandon Aiyuk",
      .
      .
      "injuries": [
        {
          "id": "598793",
          "status": "Questionable",
          "date": "2025-06-14T00:37Z",
          "type": {
            "id": "2",
            "description": "questionable"
          },
          "details": {
            "type": "Knee - ACL + MCL",
            "returnDate": "2025-08-16"
          }
        }
      ]
    },
    ...
  ]
}
```

</details>


## Get all players 

* [/v3/sports/football/nfl/athletes?limit=20000][3]

### Useful for: 
* Getting player id for play by plays

### Example

<details>

```
{
  "count": 19500,
   .
   .
  "items": [
    {
      "id": "4429202",
      "uid": "s:20~l:28~a:4429202",
      "guid": "2fcbb6af-36f8-3b49-9438-3fdef938d6da",
      "firstName": "Israel",
      "lastName": "Abanikanda",
      "fullName": "Israel Abanikanda",
      "displayName": "Israel Abanikanda",
      "shortName": "I. Abanikanda",
      "weight": 216.0,
      "displayWeight": "216 lbs",
      "height": 70.0,
      "displayHeight": "5' 10\"",
      "age": 22,
      "dateOfBirth": "2002-10-05T07:00Z",
      "birthPlace": {
        "city": "Brooklyn",
        "state": "NY",
        "country": "USA"
      },
      "experience": {
        "years": 3
      },
      "jersey": "20",
      "active": true
    },
    ...
  ]
}
```

</details>

## Get player fantasy stats (season) 

[/apis/v3/games/ffl/seasons/{SEASON}/players?view={VIEW}][1]

### Notes
* Limited to only 50 items when viewing from browser, use a tool like curl to get all players

      curl -H 'X-Fantasy-Filter: {"games":{"limit":20000}}' "<URL>"

### Views I like

* [?view=chui_default] - has historicalInjuryStatus, draftRanksByRankType
* [?view=kona_player_info]

### Related

* Get stats based on league defaults (Standard or PPR) - view [definition][leaguedefaults]:   
  [/apis/v3/games/ffl/seasons/{SEASON}/segments/1/leaguedefaults/{SCORING}?view=kona_player_info][4]

* API classifications - important for understanding how stat works  
  [/apis/v3/games/ffl/seasons/{SEASON}?view=chui_default_platformsettings][?view=chui_default_platformsettings] 

* Similar to chui_default_platformsettings  
  [/apis/v3/games/ffl/seasons/{SEASON}?view=allon][?view=allon]

<!-- 
* Get challenges (gambit-api)  
  [gambit-api.fantasy.espn.com/apis/v1/dashboards/espn-en?view=allon][gambit?view=allon]
 -->

[1]: https://lm-api-reads.fantasy.espn.com/apis/v3/games/ffl/seasons/2024/players?view=kona_player_info
[2]: https://partners.api.espn.com/v2/sports/football/nfl/athletes?limit=7000
[3]: https://sports.core.api.espn.com/v3/sports/football/nfl/athletes?page=1&limit=20000
[4]: https://lm-api-reads.fantasy.espn.com/apis/v3/games/ffl/seasons/2024/segments/1/leaguedefaults/3?view=kona_player_info
[leaguedefaults]: https://lm-api-reads.fantasy.espn.com/apis/v3/games/ffl/seasons/2024/segments/1/leaguedefaults
[?view=kona_player_info]: https://lm-api-reads.fantasy.espn.com/apis/v3/games/ffl/seasons/2024/players?view=kona_player_info
[?view=chui_default]: https://lm-api-reads.fantasy.espn.com/apis/v3/games/ffl/seasons/2024/players?view=chui_default
[?view=chui_default_platformsettings]: https://lm-api-reads.fantasy.espn.com/apis/v3/games/ffl/seasons/2024?view=chui_default_platformsettings
[?view=allon]: https://lm-api-reads.fantasy.espn.com/apis/v3/games/ffl/seasons/2024?view=allon
[gambit?view=allon]: https://gambit-api.fantasy.espn.com/apis/v1/dashboards/espn-en?view=allon
