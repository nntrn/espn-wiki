# List of NFL API Endpoints

This page has been updated a lot in the past 2 years. It might be helpful to look at older revisions. View latest [here](https://gist.github.com/nntrn/ee26cb2a0716de0947a0a4e9a157bc1c)


## Additional Resources / Further Reading

- [nfl-nerd](https://github.com/nntrn/nfl-nerd)
- [ESPN's hidden API endpoints](https://gist.github.com/akeaswaran/b48b02f1c94f873c6655e7129910fc3b)
- [Using ESPN's new Fantasy API (v3)](https://stmorse.github.io/journal/espn-fantasy-v3.html)
- [ESPN: Get Endpoint (CRAN Package)](https://cran.r-project.org/web/packages/ffscrapr/vignettes/espn_getendpoint.html)


## Parameters

| Name               | Description                                       |
| :----------------- | :------------------------------------------------ |
| `:YEAR`            | Integer year in which the season started (`YYYY`) |
| `:SEASONTYPE`      | 1=pre, 2=regular, 3=post, 4=off                   |
| `:TEAM_ID`         | 1-32 ([view all][all_team_id])                    |
| `:ATHLETE_ID`      | [view all][all_athlete_id]                        |
| `:LEAGUE_ID`       | Fantasy league id                                 |
| `:BET_PROVIDER_ID` | 38=Caesars, 31=William Hill, 41=SugarHouse, 36=Unibet, 2000=Bet 365, 25=Westgate, 45=William Hill (NJ), 1001=accuscore, 1004=consensus, 1003=numberfire, 1002=teamrankings<br>([view all][all_providers_id])|

---


### Current:

- **Athletes**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**athletes**?limit=1000&active=true][current_Athletes]

- **Team** (list of IDs):  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**teams**?limit=32][current_Teams]

- **Team** (with more details):  
[https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams)

- **Positions**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**positions**?limit=75][current_Positions]

- **Venues**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**venues**?limit=700][current_Venues]

- **Leaders**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**leaders**?limit=100][current_Leaders]

- **Seasons**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**seasons**?limit=100][current_Seasons]

- **Franchises**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**franchises**?limit=50][current_Franchises]

- **News**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/**news**?limit=50][current_news_limit]

- **Team News**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/**news**?team=**{TEAM_ID}**][current_news_team]  
  (limit is incompatible with team filter)


### Detailed:

- **Scoreboard**: [cdn.espn.com/core/nfl/scoreboard?xhr=1&limit=50][detailed_Scoreboard]

- **Schedule**: [cdn.espn.com/core/nfl/schedule?xhr=1&year=**{YEAR}**&week=**{WEEK_NUM}**][detailed_Schedule]

- **Standings**: [cdn.espn.com/core/nfl/standings?xhr=1][detailed_Standings]

- **Boxscore**: [cdn.espn.com/core/nfl/boxscore?xhr=1&gameId=**{GAME_ID}**][detailed_Boxscore]

- **Recap**: [cdn.espn.com/core/nfl/recap?xhr=1&gameId=**{GAME_ID}**][detailed_Recap]

- **Plays**: [cdn.espn.com/core/nfl/playbyplay?xhr=1&gameId=**{GAME_ID}**][detailed_Plays]

- **Game**: [cdn.espn.com/core/nfl/game?xhr=1&gameId=**{GAME_ID}**][detailed_Game]

- **Matchup**: [cdn.espn.com/core/nfl/matchup?xhr=1&gameId=**{GAME_ID}**][detailed_Matchup]


### Odds:

- **Win probabilities**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/probabilities?limit=200](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/probabilities?limit=200)

- **Odds**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/odds](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/odds)

- **Matchup Quality & Game Projection**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/predictor](http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437932/competitions/401437932/predictor)

- **Against-the-spread**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/2/teams/**{TEAM_ID}**/ats](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/types/2/teams/26/ats)

- **Futures**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/futures](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/futures)

- **Head-to-head (game)**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/odds/**{BET_PROVIDER_ID}**/head-to-heads](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/odds/1002/head-to-heads)

- **Odds records**: 
  (might encounter errors with older years)  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/0/teams/**{TEAM_ID}**/odds-records](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/types/0/teams/4/odds-records)

- **Game odds**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/odds/**{BET_PROVIDER_ID}**/history/0/movement?limit=100](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/odds/1002/history/0/movement?limit=100)

- **QBR Weekly/Game stats**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/2/weeks/**{WEEK_NUM}**/qbr/10000](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/types/2/weeks/6/qbr/10000)

- **Past performances**:  
  get spread, over/under odds, moneyline  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams/**{TEAM_ID}**/odds/**{BET_PROVIDER_ID}**/past-performances?limit=200][past_performances]


### Teams:

- [site.api.espn.com/apis/site/v2/sports/football/nfl/teams](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams)

- [site.api.espn.com/apis/site/v2/sports/football/nfl/teams/**{TEAM_ID}**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/1)

- [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/teams](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams)

- [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/teams/**{TEAM_ID}**](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/24)

- **Season Leaders**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/leaders](http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/leaders)

- **Record**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/teams/**{TEAM_ID}**/record](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/types/2/teams/6/record)

- **Depthcharts**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/teams/**{TEAM_ID}**/depthcharts](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/24/depthcharts)

- **Roster**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/teams/**{TEAM_ID}**/roster](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/4/roster)

- **Detailed Team**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/teams/**{TEAM_ID}**?**enable=roster,projection,stats**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/4?enable=roster,projection,stats)

- **Roster w/ stats**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/teams/**{TEAM_ID}**?**enable=roster**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/3?enable=roster,projection,stats)

- **Schedule**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/teams/**{TEAM_ID}**/schedule](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/4/schedule)[`?season=`**{YEAR}**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/4/schedule?season=2019)

- **Injuries**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams/**{TEAM_ID}**/injuries](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams/8/injuries?limit=100)

- **Statistics**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/teams/**{TEAM_ID}**/statistics](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/24/statistics)

- **Past performance**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams/**{TEAM_ID}**/odds/**{BET_PROVIDER_ID}**/past-performances?limit=140](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams/8/odds/1002/past-performances?limit=140)

- **Projection**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/teams/**{TEAM_ID}**/projection](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/23/projection)


### Games:

- **Events**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events)

- **Game summary**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/summary?event=**{EVENT_ID}**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/summary?event=401326315)

- **Detailed plays**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{GAME_ID}**/competitions/**{GAME_ID}**/plays?limit=300](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/plays?limit=300)

- **Probabilities (play)**:
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{GAME_ID}**/competitions/**{GAME_ID}**/probabilities?limit=300](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/probabilities?limit=300)

- **Linescores**:
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{GAME_ID}**/competitions/**{GAME_ID}**/competitors/**{TEAM_ID}**/linescores](http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437932/competitions/401437932/competitors/6/linescores)

- **Scoring & All Splits**:
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{GAME_ID}**/competitions/**{GAME_ID}**/competitors/**{TEAM_ID}**/statistics](http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437932/competitions/401437932/competitors/6/statistics)

- **Roster (get starters)**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{GAME_ID}**/competitions/**{GAME_ID}**/competitors/**{TEAM_ID}**/roster][games_roster]

- **Weekly talent picks**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks/**{WEEK_NUM}**/talentpicks?limit=100][games_talentpicks]

- **Weekly event ids**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks/**{WEEK_NUM}**/events][games_weekly_events]

- **QBR Weekly/Game stats**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks/**{WEEK_NUM}**/qbr/10000?limit=100][games_QBR]

- **Game officials/judges**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{GAME_ID}**/competitions/**{GAME_ID}**/officials][game_officials]

- **Expected margin of victory & Team's predicted win percentage**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{GAME_ID}**/competitions/**{GAME_ID}**/powerindex/**{TEAM_ID}**][game_predicted_win_percentage]


### Athletes:

- **Current leaders**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/leaders](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/leaders)

- **Leaders (year)**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/leaders](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/leaders)

- **Talent picks**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/talentpicks](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/talentpicks)

- **Gamelog**:  
  [site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/**{ATHLETE_ID}**/gamelog](https://site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/14876/gamelog)

- **Coaches**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/coaches?limit=50](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/coaches?limit=50)

- **Athletes**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes)

- **Player stats for each game**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/athletes/**{ATHLETE_ID}**/eventlog](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/athletes/14876/eventlog)

- **statisticslog**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/**{ATHLETE_ID}**/statisticslog](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/2576336/statisticslog)

- **Athlete Overview**:  
  [site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/**{ATHLETE_ID}**/overview](https://site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/14876/overview)

- **Free agents**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/freeagents](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/freeagents)

- **Draft**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/draft](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft)

- **Draft rounds**:  
  [site.web.api.espn.com/apis/v2/scoreboard/header?draft_year=**{YEAR}**&draft_round=1](https://site.web.api.espn.com/apis/v2/scoreboard/header?draft_year=2023&draft_round=1)


### Calendar:

- [sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar][calendar]

- [sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/ondays][ondays]

- [sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/offdays][offdays]

- [sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/blacklist][blacklist]

- [sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/whitelist][whitelist]

- **All weeks in given season**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks][all_weeks_season]

- **Weeks**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks)

- **Season**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021)


### Scoreboard:

- **Events in a season**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?limit=1000&dates=**YYYY**][scoreboard_YYYY]

- **Events between dates**: (cannot be >13 months)  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?limit=1000&dates=**YYYYMMDD-YYYYMMDD**][scoreboard_YYYYMMDD_YYYYMMDD]

- **Events for a single day**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=**YYYYMMDD**][scoreboard_YYYYMMDD]

- **Season standing**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/groups/**{CONFERENCE_ID}**/standings][AFC_season_standing]

  - [AFC][AFC_season_standing] (CONFERENCE_ID=8)
  - [NFC][NFC_season_standing] (CONFERENCE_ID=7)


### League:

- **Transactions**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/transactions](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/transactions)

- **Groups**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/groups](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/4/groups)

- **Franchises**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises)

- **Header**:  
  [site.web.api.espn.com/apis/v2/scoreboard/header?sport=football&league=nfl](https://site.web.api.espn.com/apis/v2/scoreboard/header?sport=football&league=nfl)


### Fantasy:

- [fantasy.espn.com/apis/v3/games/ffl](https://fantasy.espn.com/apis/v3/games/ffl)

- [site.web.api.espn.com/apis/fantasy/v2/games/ffl/games?dates=**YYYYMMDD-YYYYMMDD**](https://site.web.api.espn.com/apis/fantasy/v2/games/ffl/games?dates=20210901-20211108)

- [fantasy.espn.com/apis/v3/games/ffl/seasons/2019/segments/0/leagues/**{LEAGUE_ID}**](https://fantasy.espn.com/apis/v3/games/ffl/seasons/2019/segments/0/leagues/1241838?view=mDraftDetail&view=mLiveScoring&view=mMatchupScore&view=mPendingTransactions&view=mPositionalRatings&view=mSettings&view=mTeam&view=modular&view=mNav)


### Search:

- [site.web.api.espn.com/apis/common/v3/search?query=nfl&limit=5&mode=prefix](https://site.web.api.espn.com/apis/common/v3/search?query=nfl&limit=5&mode=prefix)

- [site.web.api.espn.com/apis/common/v3/search](https://site.web.api.espn.com/apis/common/v3/search)

---

[current_Athletes]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes?limit=1000&active=true
[current_Teams]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams?limit=32
[current_Positions]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/positions?limit=75
[current_Venues]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/venues?limit=700
[current_news_limit]: https://site.api.espn.com/apis/site/v2/sports/football/nfl/news?limit=50
[current_news_team]: https://site.api.espn.com/apis/site/v2/sports/football/nfl/news?team=10
[current_Leaders]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/leaders?limit=100
[current_Seasons]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons?limit=100
[current_Franchises]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises?limit=50
[detailed_Scoreboard]: https://cdn.espn.com/core/nfl/scoreboard?xhr=1&limit=50
[detailed_Schedule]: https://cdn.espn.com/core/nfl/schedule?xhr=1&year=2020&week=2
[detailed_Standings]: https://cdn.espn.com/core/nfl/standings?xhr=1
[detailed_Boxscore]: https://cdn.espn.com/core/nfl/boxscore?xhr=1&gameId=401220225
[detailed_Recap]: https://cdn.espn.com/core/nfl/recap?xhr=1&gameId=401220225
[detailed_Plays]: https://cdn.espn.com/core/nfl/playbyplay?xhr=1&gameId=401220225
[detailed_Game]: https://cdn.espn.com/core/nfl/game?xhr=1&gameId=401127922
[detailed_Matchup]: https://cdn.espn.com/core/nfl/matchup?xhr=1&gameId=401220225
[games_talentpicks]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/types/2/weeks/6/talentpicks?limit=100
[games_roster]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220225/competitions/401220225/competitors/12/roster
[games_weekly_events]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/1/events
[games_QBR]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/types/2/weeks/6/qbr/10000?limit=100
[game_officials]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437954/competitions/401437954/officials
[game_predicted_win_percentage]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437954/competitions/401437954/powerindex/30
[scoreboard_YYYYMMDD]: https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=20181213
[scoreboard_YYYY]: https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?limit=1000&dates=2022
[scoreboard_YYYYMMDD_YYYYMMDD]: https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?limit=1000&dates=20200901-20210228
[AFC_season_standing]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/8/standings
[NFC_season_standing]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/7/standings
[all_team_id]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams
[all_athlete_id]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes?limit=1000&active=true
[all_providers_id]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/providers?limit=100
[past_performances]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams/10/odds/1002/past-performances?limit=200
[calendar]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar
[ondays]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/ondays
[offdays]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/offdays
[blacklist]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/blacklist
[whitelist]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/whitelist
[all_weeks_season]: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/week
