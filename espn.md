# List of NFL API Endpoints

This page has been updated a lot in the past 2 years.

**Older revisions you might like more than this one:**

- [**June 2021**](https://gist.github.com/nntrn/ee26cb2a0716de0947a0a4e9a157bc1c/b99b9e0d2df72470fa622e2f76cecb0362111e9a) - list of endpoints for other sports/leagues (i.e. basketball, baseball, lacrosse, rugby)
- [**August 2021**](https://gist.github.com/nntrn/ee26cb2a0716de0947a0a4e9a157bc1c/9daed3db02cc2661e63ea08741c6053c5aef28ce#league-history---get-all-historical-data) - get historical fantasy league data
- [**September 2021**](https://gist.github.com/nntrn/ee26cb2a0716de0947a0a4e9a157bc1c/2fa98612cedcbad033d4206b16cd360c9b654ae9#file-source-txt) - list of endpoints in plain text
- [**December 2021**](https://gist.github.com/nntrn/ee26cb2a0716de0947a0a4e9a157bc1c/e178f6ed83fe806b4a3913a4ba3e3f59e44c2174) - includes example responses for each endpoint
- [**May 2023**](https://gist.github.com/nntrn/ee26cb2a0716de0947a0a4e9a157bc1c/cd7462cd365e516d7499b43f027db4b8b1a2d6c0) - collapsed endpoint response examples

**Additional Resources**

- [nfl-nerd](https://github.com/nntrn/nfl-nerd) ([api](https://raw.githubusercontent.com/nntrn/nfl-nerd/master/src/api.js))
- [espn-wiki](https://github.com/nntrn/espn-wiki/wiki) :star:
- [ESPN's hidden API endpoints](https://gist.github.com/akeaswaran/b48b02f1c94f873c6655e7129910fc3b)
- [Using ESPN's new Fantasy API (v3)](https://stmorse.github.io/journal/espn-fantasy-v3.html)
- [ESPN: Get Endpoint (CRAN Package)](https://cran.r-project.org/web/packages/ffscrapr/vignettes/espn_getendpoint.html)


**Notes**

* This page is limited to NFL endpoints but can be refashioned for other leagues (i.e. `/sports/football/leagues/nfl/` => `/sports/baseball/leagues/mlb/`)

* [List of ESPN leagues](https://gist.githubusercontent.com/nntrn/ee26cb2a0716de0947a0a4e9a157bc1c/raw/5e0b844e4d56d0b049747024a04bb7949c2d6c5d/extending-espn-api.md)

<br>

## API Endpoints

- **{YEAR}**: Football season (`YYYY`)
- **{SEASONTYPE}**: 1=pre, 2=regular, 3=post, 4=off
- **{TEAM_ID}**: 1-32 ([view all](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams))
- **{ATHLETE_ID}**: [view all](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes?limit=1000&active=true)
- **{LEAGUE_ID}**: Fantasy league id
- **{BET_PROVIDER_ID}**: [view all](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/providers?limit=100)

---

### General

- **Athletes**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**athletes**?limit=1000&active=true](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes?limit=1000&active=true)

- **Team (list of IDs)**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**teams**?limit=32](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams?limit=32)

- **Positions**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**positions**?limit=75](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/positions?limit=75)

- **Venues**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**venues**?limit=700](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/venues?limit=700)

- **Leaders**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**leaders**?limit=100](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/leaders?limit=100)

- **Seasons**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**seasons**?limit=100](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons?limit=100)

- **Franchises**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/**franchises**?limit=50](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises?limit=50)

- **News**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/**news**?limit=50](https://site.api.espn.com/apis/site/v2/sports/football/nfl/news?limit=50)

- **Team News**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/**news**?team=**{TEAM_ID}**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/news?team=10) (limit is incompatible with team filter)


### Detailed

- **Scoreboard**: [cdn.espn.com/core/nfl/scoreboard?xhr=1&limit=50](https://cdn.espn.com/core/nfl/scoreboard?xhr=1&limit=50)

- **Schedule**: [cdn.espn.com/core/nfl/schedule?xhr=1&year=**{YEAR}**&week=**{WEEK_NUM}**](https://cdn.espn.com/core/nfl/schedule?xhr=1&year=2020&week=2)

- **Standings**: [cdn.espn.com/core/nfl/standings?xhr=1](https://cdn.espn.com/core/nfl/standings?xhr=1)

- **Boxscore**: [cdn.espn.com/core/nfl/boxscore?xhr=1&gameId=**{EVENT_ID}**](https://cdn.espn.com/core/nfl/boxscore?xhr=1&gameId=401220225)

- **Recap**: [cdn.espn.com/core/nfl/recap?xhr=1&gameId=**{EVENT_ID}**](https://cdn.espn.com/core/nfl/recap?xhr=1&gameId=401220225)

- **Plays**: [cdn.espn.com/core/nfl/playbyplay?xhr=1&gameId=**{EVENT_ID}**](https://cdn.espn.com/core/nfl/playbyplay?xhr=1&gameId=401220225)

- **Game**: [cdn.espn.com/core/nfl/game?xhr=1&gameId=**{EVENT_ID}**](https://cdn.espn.com/core/nfl/game?xhr=1&gameId=401127922)

- **Matchup**: [cdn.espn.com/core/nfl/matchup?xhr=1&gameId=**{EVENT_ID}**](https://cdn.espn.com/core/nfl/matchup?xhr=1&gameId=401220225)


### Odds

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

- **Odds records**: (might encounter errors with older years)
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/0/teams/**{TEAM_ID}**/odds-records](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/types/0/teams/4/odds-records)

- **Game odds**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/odds/**{BET_PROVIDER_ID}**/history/0/movement?limit=100](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/odds/1002/history/0/movement?limit=100)

- **QBR Weekly/Game stats**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/2/weeks/**{WEEK_NUM}**/qbr/10000](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/types/2/weeks/6/qbr/10000)

- **Past performances**: get spread, over/under odds, moneyline
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams/**{TEAM_ID}**/odds/**{BET_PROVIDER_ID}**/past-performances?limit=200](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams/10/odds/1002/past-performances?limit=200)


### Teams

- **Team Athletes**:  
  https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2023/teams/18/athletes?limit=200

- **Teams (Current)**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/teams](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams)

- **Team**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/teams/**{TEAM_ID}**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/1)

- **Teams (Season)**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/teams](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams)

- **Team (season)**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/teams/**{TEAM_ID}**](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/24)

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

- **Projection** (not valid for past seasons):  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**2023**/teams/**{TEAM_ID}**/projection](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2023/teams/23/projection)

- **Season standing**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/groups/**{CONFERENCE_ID}**/standings](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/8/standings)

  [AFC](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/8/standings) (CONFERENCE_ID=8)  
  [NFC](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/7/standings) (CONFERENCE_ID=7)


### Games

- **Events**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events)

- :star: **Game summary**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/summary?event=**{EVENT_ID}**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/summary?event=401326315)

- **Play by Plays**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/plays?limit=300](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/plays?limit=300)

- **Play probabilities**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/probabilities?limit=300](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/probabilities?limit=300)

- **Linescores**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/competitors/**{TEAM_ID}**/linescores](http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437932/competitions/401437932/competitors/6/linescores)

- **Scoring & All Splits**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/competitors/**{TEAM_ID}**/statistics](http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437932/competitions/401437932/competitors/6/statistics)

- **Roster (get starters)**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/competitors/**{TEAM_ID}**/roster](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220225/competitions/401220225/competitors/12/roster)

- **Weekly talent picks**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks/**{WEEK_NUM}**/talentpicks?limit=100](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/types/2/weeks/6/talentpicks?limit=100)

- **Weekly event ids**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks/**{WEEK_NUM}**/events](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/1/events)

- **QBR Weekly/Game stats**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks/**{WEEK_NUM}**/qbr/10000?limit=100](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/types/2/weeks/6/qbr/10000?limit=100)

- **Game officials/judges**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/officials](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437954/competitions/401437954/officials)

- **Expected margin of victory & predicted win percentage**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/powerindex/**{TEAM_ID}**](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437954/competitions/401437954/powerindex/30)


### Athletes

- :star: **Splits**:  
  [site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/**{ATHLETE_ID}**/splits](https://site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/14876/splits)

- **Player stats for event**:
  
    - **Eventlog**:  
      [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/athletes/**{ATHLETE_ID}**/eventlog](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/athletes/14876/eventlog)

    - **Event stats**:
      [sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/**{EVENT_ID}**/competitions/**{EVENT_ID}**/competitors/**{TEAM_ID}**/roster/**{ATHLETE_ID}**/statistics/0](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437640/competitions/401437640/competitors/10/roster/14876/statistics/0)


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

- **Athletes v2**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes)

- **Athletes v3**:  
  [sports.core.api.espn.com/v3/sports/football/nfl/athletes](https://sports.core.api.espn.com/v3/sports/football/nfl/athletes?limit=1000)

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


### Calendar

- **Ondays**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/ondays](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/ondays)

- **Offdays**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/offdays](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/offdays)

- **Blacklist**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/blacklist](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/blacklist)

- **Whitelist dates**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/whitelist](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/whitelist)

- **Weeks**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks)

- **Rankings, events, and talentpicks for week**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/weeks/**{WEEKNUM}**](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/1)
  
- **Season**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021)


### Scoreboard

- **Day**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=**YYYYMMDD**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=20181213)

- **Week**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=**YYYY**&seasontype=**{SEASONTYPE}**&week=**{WEEKNUM}**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=2018&seasontype=2&week=1)

- **Year**:  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=**YYYY**&seasontype=2](https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=2018&seasontype=2)

- **Range** (cannot be more than 13 months):  
  [site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?limit=1000&dates=**YYYYMMDD-YYYYMMDD**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?limit=1000&dates=20200901-20210228)

  ---

  **Examples**:  
  site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard
  * [?dates=**2022**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?limit=1000&dates=2022)
  * [?dates=**2022**&seasontype=**2**&week=**1**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=2022&seasontype=2&week=1)
  * [?dates=**20200901-20210228**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=20200901-20210228)
  * [?dates=**20200901**](https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard?dates=20200901)



### League

- **Transactions**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/transactions](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/transactions)

- **Groups**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/**{YEAR}**/types/**{SEASONTYPE}**/groups](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/4/groups)

- **Franchises**:  
  [sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises](https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises)

- **Header**:  
  [site.web.api.espn.com/apis/v2/scoreboard/header?sport=football&league=nfl](https://site.web.api.espn.com/apis/v2/scoreboard/header?sport=football&league=nfl)


### Search

- [site.web.api.espn.com/apis/common/v3/search?query=nfl&limit=5&mode=prefix](https://site.web.api.espn.com/apis/common/v3/search?query=nfl&limit=5&mode=prefix)

- [site.web.api.espn.com/apis/common/v3/search](https://site.web.api.espn.com/apis/common/v3/search)


### Fantasy

* **Position map**
  ```json
  { "1": "QB",
    "2": "RB",
    "3": "WR",
    "4": "TE",
    "5": "K",
   "16": "DST" }
  ```

* **Player stats map**
  ```json
  {  "3": "passingYards",
     "4": "passingTouchdowns",
    "19": "passing2PtConversions",
    "20": "passingInterceptions",
    "24": "rushingYards",
    "25": "rushingTouchdowns",
    "26": "rushing2PtConversions",
    "42": "receivingYards",
    "43": "receivingTouchdowns",
    "44": "receiving2PtConversions",
    "53": "receivingReceptions",
    "72": "lostFumbles",
    "74": "madeFieldGoalsFrom50Plus",
    "77": "madeFieldGoalsFrom40To49",
    "80": "madeFieldGoalsFromUnder40",
    "85": "missedFieldGoals",
    "86": "madeExtraPoints",
    "88": "missedExtraPoints",
    "89": "defensive0PointsAllowed",
    "90": "defensive1To6PointsAllowed",
    "91": "defensive7To13PointsAllowed",
    "92": "defensive14To17PointsAllowed",
    "93": "defensiveBlockedKickForTouchdowns",
    "95": "defensiveInterceptions",
    "96": "defensiveFumbles",
    "97": "defensiveBlockedKicks",
    "98": "defensiveSafeties",
    "99": "defensiveSacks",
   "101": "kickoffReturnTouchdown",
   "102": "puntReturnTouchdown",
   "103": "fumbleReturnTouchdown",
   "104": "interceptionReturnTouchdown",
   "123": "defensive28To34PointsAllowed",
   "124": "defensive35To45PointsAllowed",
   "129": "defensive100To199YardsAllowed",
   "130": "defensive200To299YardsAllowed",
   "132": "defensive350To399YardsAllowed",
   "133": "defensive400To449YardsAllowed",
   "134": "defensive450To499YardsAllowed",
   "135": "defensive500To549YardsAllowed",
   "136": "defensiveOver550YardsAllowed" }
  ```


- :star: **API structure**:  
  https://fantasy.espn.com/apis/v3/swagger.json

- **Current season**:  
  [fantasy.espn.com/apis/v3/games/ffl](https://fantasy.espn.com/apis/v3/games/ffl)

- **Player stats in date range**:  
  [site.web.api.espn.com/apis/fantasy/v2/games/ffl/games?dates=**YYYYMMDD-YYYYMMDD**](https://site.web.api.espn.com/apis/fantasy/v2/games/ffl/games?dates=20210901-20211108)

- **Private league**:  
  [fantasy.espn.com/apis/v3/games/ffl/seasons/2019/segments/0/leagues/**{LEAGUE_ID}**](https://fantasy.espn.com/apis/v3/games/ffl/seasons/2019/segments/0/leagues/1241838?view=mDraftDetail&view=mLiveScoring&view=mMatchupScore&view=mPendingTransactions&view=mPositionalRatings&view=mSettings&view=mTeam&view=modular&view=mNav)

  ---

- **Get percent owned of every play**:  
  [fantasy.espn.com/apis/v3/games/ffl/seasons/**{YEAR}**/players?scoringPeriodId=0&view=players_wl](https://fantasy.espn.com/apis/v3/games/ffl/seasons/2023/players?scoringPeriodId=0&view=players_wl)

  ```sh
  curl -H 'X-Fantasy-Filter: {"filterActive":{"value":true}}' <URL>
  ```

  `X-Fantasy-Filter` is required in the request header to get all active players. Omitting this returns only 50 items

  ---

- **Get player info**:  
  [fantasy.espn.com/apis/v3/games/ffl/seasons/**{YEAR}**/segments/0/leaguedefaults/3?view=kona_player_info](https://fantasy.espn.com/apis/v3/games/ffl/seasons/2023/segments/0/leaguedefaults/3?view=kona_player_info)

  ```sh
  curl -H 'X-Fantasy-Filter: {"players":{"limit":2000,"sortPercOwned":{"sortPriority":4,"sortAsc":false}}}' <URL>
  ```

  `sortPercOwned` is required with `limit`

  ---

- **Get bye week for all teams**:  
  [fantasy.espn.com/apis/v3/games/ffl/seasons/**{YEAR}**?view=proTeamSchedules_wl](https://fantasy.espn.com/apis/v3/games/ffl/seasons/2023?view=proTeamSchedules_wl)

  ```sh
  jq '.settings.proTeams|map({name,byeWeek})'
  ```


## REST API Response Preview


### Get team projection

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2023/teams/10/projection

```json
{
  "chanceToWinThisWeek": 0.46621,
  "chanceToWinDivision": 0.228,
  "projectedWins": 7.899,
  "projectedLosses": 9.042
}
```

<br>
<details><summary>Expand for more</summary>
<br>

<div id="top"></div>

**TABLE OF CONTENTS**

* [ATHLETE PROFILE API](#athlete-profile-api)
* [ATHLETE BIO API](#athlete-bio-api)
* [ATHLETE EVENTLOG API](#athlete-eventlog-api)
* [ATHLETE GAMELOG API](#athlete-gamelog-api)
* [ATHLETE NOTES API](#athlete-notes-api)
* [ATHLETE PROJECTIONS API](#athlete-projections-api)
* [ATHLETE SPLITS API](#athlete-splits-api)
* [ATHLETE STATISTICS API](#athlete-statistics-api)
* [ATHLETE STATISTICSLOG API](#athlete-statisticslog-api)
* [ATHLETE STATS API](#athlete-stats-api)
* [CALENDAR API](#calendar-api)
* [CALENDAR BLACKLIST API](#calendar-blacklist-api)
* [CALENDAR WHITELIST API](#calendar-whitelist-api)
* [GAME PREDICTION API](#game-prediction-api)
* [COMPETITION DRIVES API](#competition-drives-api)
* [BETTING ODDS API](#betting-odds-api)
* [COMPETITION PLAYS API](#competition-plays-api)
* [GETS ALL PLAYS FOR A GAME: API](#gets-all-plays-for-a-game-api)
* [COMPETITION PROBABILITIES API](#competition-probabilities-api)
* [COMPETITOR ROSTER API](#competitor-roster-api)
* [DRAFT ATHLETES API](#draft-athletes-api)
* [DRAFT ROUNDS API](#draft-rounds-api)
* [DRAFT STATUS API](#draft-status-api)
* [EVENTS API](#events-api)
* [EVENT COMPETITIONS API](#event-competitions-api)
* [FRANCHISES API](#franchises-api)
* [GROUP STANDINGS API](#group-standings-api)
* [GROUP TEAMS API](#group-teams-api)
* [LEADERS API](#leaders-api)
* [NEWS API](#news-api)
* [ODD PREDICTORS API](#odd-predictors-api)
* [POSITIONS API](#positions-api)
* [PROVIDERS API](#providers-api)
* [SCOREBOARD API](#scoreboard-api)
* [SEASONS API](#seasons-api)
* [SEASON ATHLETES API](#season-athletes-api)
* [SEASON COACHES API](#season-coaches-api)
* [SEASON DRAFT API](#season-draft-api)
* [SEASON FUTURES API](#season-futures-api)
* [SEASON TEAMS API](#season-teams-api)
* [SEASON TYPES API](#season-types-api)
* [TALENTPICKS API](#talentpicks-api)
* [TEAM API](#team-api)
* [TEAM ATHLETES API](#team-athletes-api)
* [TEAM ATS API](#team-ats-api)
* [TEAM ATTENDANCE API](#team-attendance-api)
* [TEAM COACHES API](#team-coaches-api)
* [TEAM DEPTHCHARTS API](#team-depthcharts-api)
* [TEAM EVENTS API](#team-events-api)
* [TEAM INJURIES API](#team-injuries-api)
* [TEAM LEADERS API](#team-leaders-api)
* [TEAM ODDS-RECORDS API](#team-odds-records-api)
* [TEAM PROJECTION API](#team-projection-api)
* [TEAM RECORD API](#team-record-api)
* [TEAM ROSTER API](#team-roster-api)
* [TEAM SCHEDULE API](#team-schedule-api)
* [TEAM STATISTICS API](#team-statistics-api)
* [SEASONTYPE GROUPS API](#seasontype-groups-api)
* [SEASONTYPE LEADERS API](#seasontype-leaders-api)
* [SEASONTYPE WEEKS API](#seasontype-weeks-api)
* [VENUES API](#venues-api)
* [WEEKLY EVENTS API](#weekly-events-api)
* [WEEKLY QBR API](#weekly-qbr-api)
* [WEEKLY TALENTPICKS API](#weekly-talentpicks-api)



### ATHLETE PROFILE API

**URL**: https://site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/14876

```json
{
  "athlete": {
    "id": "14876",
    "uid": "s:20~l:28~a:14876",
    "guid": "2d6af5dcb3d3e2d4cf7227d4a8eb93cd",
    "type": "football",
    "firstName": "Ryan",
    "lastName": "Tannehill",
    "displayName": "Ryan Tannehill",
    "fullName": "Ryan Tannehill",
    "debutYear": 2012,
    "jersey": "17",
    "links": [
      {
        "language": "en",
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes?limit=1000

```json
{
  "count": 4559,
  "pageIndex": 1,
  "pageSize": 1000,
  "pageCount": 5,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/2576336"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/3049325"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/3915373"
    },
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/14876

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/12483",
  "id": "12483",
  "uid": "s:20~l:28~a:12483",
  "guid": "20c41c33a33f6dc27e1f0771e39ce49a",
  "type": "football",
  "alternateIds": {
    "sdr": "2219510"
  },
  "firstName": "Matthew",
  "lastName": "Stafford",
  "fullName": "Matthew Stafford",
  "displayName": "Matthew Stafford",
  "shortName": "M. Stafford",
  "weight": 220,
```

[[TOP]](#top)

### ATHLETE BIO API

**URL**: https://site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/14876/bio

```json
{
  "teamHistory": [
    {
      "id": "10",
      "uid": "s:20~l:28~t:10",
      "slug": "tennessee-titans",
      "displayName": "Tennessee Titans",
      "logo": "https://a.espncdn.com/i/teamlogos/nfl/500/ten.png",
      "seasons": "2019-CURRENT",
      "links": [
        {
          "language": "en",
          "rel": [
            "clubhouse",
            "desktop",
```

[[TOP]](#top)

### ATHLETE EVENTLOG API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/athletes/14876/eventlog

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/athletes/14876/eventlog",
  "teams": {
    "10": {
      "team": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/teams/10"
      },
      "id": "10"
    }
  },
  "events": {
    "count": 17,
    "pageIndex": 1,
    "pageSize": 25,
    "pageCount": 1,
    "items": [
      {
        "event": {
          "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437640"
        },
        "competition": {
          "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437640/competitions/401437640"
        },
        "statistics": {
          "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437640/competitions/401437640/competitors/10/roster/14876/statistics/0"
        },
        "teamId": "10",
        "played": true
      },
```

[[TOP]](#top)

### ATHLETE GAMELOG API

**URL**: https://site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/14876/gamelog

```json
{
  "categories": [
    {
      "name": "passing",
      "displayName": "Passing",
      "count": 11
    },
    {
      "name": "rushing",
      "displayName": "Rushing",
      "count": 5
    }
  ],
  "filters": [
    {
```

[[TOP]](#top)

### ATHLETE NOTES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/14876/notes

```json
{
  "count": 1,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "id": "498444",
      "type": "news",
      "date": "2021-12-17T20:14Z",
      "headline": "Stafford and the Rams aren't in line to play the Seahawks on Sunday, with the NFL expected to reschedule the game for Tuesday at 7 p.m. ET, pending official confirmation, Adam Schefter of ESPN reports.",
      "text": "Due to ongoing COVID-19-related issues within the Rams organization, the NFL is hopeful that by delaying the game two days, Los Angeles will be able to restore enough players from the reserve/COVID-19 list to alleviate depth concerns on the roster. After Tuesday's game, the Rams will face a quick turnaround for Week 16 with a Sunday game in Minnesota on Dec. 26.",
      "source": "RotoWire"
    }
  ]
}
```

[[TOP]](#top)

### ATHLETE PROJECTIONS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/athletes/14876/projections

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/athletes/14876/statistics/0",
  "season": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021"
  },
  "athlete": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/14876"
  },
  "splits": {
    "id": "0",
    "name": "All Splits",
    "abbreviation": "Any",
    "type": "total",
    "categories": [
      {
```

[[TOP]](#top)

### ATHLETE SPLITS API

**URL**: https://site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/14876/splits

```json
{
  "filters": [
    {
      "displayName": "League",
      "name": "league",
      "value": "nfl",
      "options": [
        {
          "value": "college-football",
          "displayValue": "NCAAF"
        },
        {
          "value": "nfl",
          "displayValue": "NFL"
        }
```

[[TOP]](#top)

### ATHLETE STATISTICS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/14876/statistics/0

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/12483/statistics/0",
  "athlete": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/12483"
  },
  "splits": {
    "id": "0",
    "name": "All Splits",
    "abbreviation": "Any",
    "categories": [
      {
        "name": "general",
        "displayName": "General",
        "shortDisplayName": "General",
        "abbreviation": "gen",
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/athletes/14876/statistics

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/athletes/14876/statistics/0",
  "season": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021"
  },
  "athlete": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/14876"
  },
  "splits": {
    "id": "0",
    "name": "All Splits",
    "abbreviation": "Any",
    "type": "total",
    "categories": [
      {
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/athletes/14876/statistics/0

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/athletes/12483/statistics/0",
  "season": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021"
  },
  "athlete": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/12483"
  },
  "splits": {
    "id": "0",
    "name": "All Splits",
    "abbreviation": "Any",
    "type": "total",
    "categories": [
      {
```

[[TOP]](#top)

### ATHLETE STATISTICSLOG API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/14876/statisticslog

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/athletes/14876/statisticslog",
  "entries": [
    {
      "season": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021"
      },
      "statistics": [
        {
          "type": "total",
          "statistics": {
            "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/athletes/14876/statistics/0"
          }
        },
        {
```

[[TOP]](#top)

### ATHLETE STATS API

**URL**: https://site.web.api.espn.com/apis/common/v3/sports/football/nfl/athletes/14876/stats

```json
{
  "filters": [
    {
      "displayName": "League",
      "name": "league",
      "value": "nfl",
      "options": [
        {
          "value": "college-football",
          "displayValue": "NCAAF"
        },
        {
          "value": "nfl",
          "displayValue": "NFL"
        }
```

[[TOP]](#top)

### CALENDAR API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar

```json
{
  "count": 4,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/ondays"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/offdays"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/whitelist"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/blacklist"
    }
  ]
}
```

[[TOP]](#top)

### CALENDAR BLACKLIST API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/blacklist

```json
{
  "type": "list",
  "startDate": "2021-07-17T07:00Z",
  "endDate": "2022-02-16T07:59Z",
  "eventDate": {
    "type": "blacklist",
    "dates": [
      "2021-07-17T07:00Z",
      "2021-07-18T07:00Z",
      "2021-07-19T07:00Z",
      "2021-07-20T07:00Z",
      "2021-07-21T07:00Z",
      "2021-07-22T07:00Z",
      "2021-07-23T07:00Z",
```

[[TOP]](#top)

### CALENDAR WHITELIST API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/calendar/whitelist

```json
{
  "type": "list",
  "startDate": "2021-07-17T07:00Z",
  "endDate": "2022-02-16T07:59Z",
  "eventDate": {
    "type": "whitelist",
    "dates": [
      "2021-08-05T07:00Z",
      "2021-08-12T07:00Z",
      "2021-08-13T07:00Z",
      "2021-08-14T07:00Z",
      "2021-08-15T07:00Z",
      "2021-08-19T07:00Z",
      "2021-08-20T07:00Z",
```

[[TOP]](#top)

### GAME PREDICTION API

Example: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437954/competitions/401437954/powerindex/30

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401437954/competitions/401437954/powerindex/30?lang=en&region=us",
  "team": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2022/teams/30?lang=en&region=us"
  },
  "season": 2022,
  "stats": [
    {
      "name": "teampredptdiff",
      "displayName": "PRED PT DIFF",
      "description": "Expected margin of victory for the FPI favorite.",
      "abbreviation": "PRED PT DIFF",
      "value": 12.175,
      "displayValue": "12.2"
    },
    {
      "name": "gameprojection",
      "displayName": "WIN PROB",
      "description": "Team's predicted win percentage in this game at time of given BPI run",
      "abbreviation": "GAME PROJ",
      "value": 84.81,
      "displayValue": "84.8%"
    },
    {
      "name": "matchupquality",
      "displayName": "MATCHUP QUALITY",
      "description": "A measure of projected competitiveness and excitement in the game, using a 0 to 100 scale, with 100 as the most exciting",
      "abbreviation": "MATCHUP QUALITY",
      "value": 35.261,
      "displayValue": "35.3"
    },
    {
      "name": "teamadjgamescore",
      "displayName": "GAME SCORE",
      "description": "A measure of how well a team performed compared to their expected performance and the expected performance of a typical top 25 team.",
      "abbreviation": "TEAM ADJ GAMESCORE",
      "displayValue": ""
    }
  ]
}
```

[[TOP]](#top)

### COMPETITION DRIVES API

http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/drives/4012490631

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/drives/4012490631",
  "id": "4012490631",
  "description": "16 plays, 75 yards, 9:18",
  "sequenceNumber": "1",
  "team": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/23"
  },
  "endTeam": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/23"
  },
  "start": {
    "period": {
      "type": "quarter",
      "number": 1
```

[[TOP]](#top)

### BETTING ODDS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/odds

```json
},{
  "provider": {
    "id": "1001",
    "name": "accuscore",
    "priority": 0
  },
  "details": "BAL -7.5",
  "overUnder": 49,
  "spread": 7.5,
  "overOdds": -111,
  "underOdds": -111,
  "awayTeamOdds": {
    "favorite": true,
    "underdog": false,
    "moneyLine": -370,
    "spreadOdds": -111,
    "team": {}
  },
  "homeTeamOdds": {
    "favorite": false,
    "underdog": true,
    "moneyLine": 280,
    "spreadOdds": -111,
    "team": {}
  },
  "moneylineWinner": false,
  "spreadWinner": false
},
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315/competitions/401326315/odds/1003

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315/competitions/401326315/odds/1003",
  "provider": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/providers/1003",
    "id": "1003",
    "name": "numberfire",
    "priority": 0
  },
  "details": "ATL -3.5",
  "overUnder": 48.5,
  "spread": -3.5,
  "overOdds": 45.31,
  "underOdds": 54.69,
  "awayTeamOdds": {
    "averageScore": 20.62,
```

[[TOP]](#top)

### COMPETITION PLAYS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/plays/4012490631

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401249063/competitions/401249063/plays/4012490631",
  "id": "4012490631",
  "sequenceNumber": "100",
  "type": {
    "id": "70",
    "text": "Coin Toss"
  },
  "text": "GAME",
  "shortText": "PIT Win Toss, Elect to Receive",
  "alternativeText": "GAME",
  "shortAlternativeText": "PIT Win Toss, Elect to Receive",
  "awayScore": 0,
  "homeScore": 0,
  "period": {
```

[[TOP]](#top)

### GETS ALL PLAYS FOR A GAME: API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/plays?limit=400

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/plays?source=2",
  "count": 167,
  "pageIndex": 1,
  "pageSize": 100,
  "pageCount": 2,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/plays/4012201811",
      "id": "4012201811",
      "sequenceNumber": "100",
      "type": {
        "id": "70",
        "text": "Coin Toss"
      },
```

[[TOP]](#top)

### COMPETITION PROBABILITIES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315/competitions/401326315/probabilities/4012490631

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315/competitions/401326315/probabilities/4012490631",
  "competition": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315/competitions/401326315"
  },
  "play": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315/competitions/401326315/plays/4012490631"
  },
  "homeTeam": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/1"
  },
  "awayTeam": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/21"
  },
  "tiePercentage": 0,
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/probabilities?limit=200

```json
{
  "count": 166,
  "pageIndex": 1,
  "pageSize": 200,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/probabilities/4012201811",
      "competition": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181"
      },
      "play": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/plays/4012201811"
      },
      "homeTeam": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/teams/34"
      },
      "awayTeam": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/teams/33"
      },
      "tiePercentage": 0,
      "homeWinPercentage": 0.312,
      "awayWinPercentage": 0.688,
      "lastModified": "2020-09-21T00:14Z",
      "sequenceNumber": "100",
      "source": {
        "id": "2",
        "description": "feed",
        "state": "full"
      },
      "secondsLeft": 0
    },
```

[[TOP]](#top)

### COMPETITOR ROSTER API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/competitors/34/roster

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401220181/competitions/401220181/competitors/34/roster",
  "entries": [
    {
      "playerId": 13979,
      "period": 0,
      "active": false,
      "starter": true,
      "forPlayerId": 0,
      "jersey": "99",
      "valid": true,
      "athlete": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/athletes/13979"
      },
      "position": {
```

[[TOP]](#top)

### DRAFT ATHLETES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/athletes?limit=500

```json
{
  "count": 366,
  "pageIndex": 1,
  "pageSize": 500,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/athletes/104734"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/athletes/104760"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/athletes/104737"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/athletes/104933"
```

[[TOP]](#top)

### DRAFT ROUNDS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/rounds

```json
{
  "count": 7,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "number": 1,
      "displayName": "1st Round",
      "shortDisplayName": "1st",
      "picks": [
        {
          "status": {
            "id": 3,
            "name": "SELECTION_MADE",
```

[[TOP]](#top)

### DRAFT STATUS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/status

```json
{
  "round": 7,
  "type": {
    "id": 3,
    "name": "COMPLETED",
    "state": "post",
    "description": "Completed"
  }
}
```

[[TOP]](#top)

### EVENTS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events

```json
{
  "$meta": {
    "parameters": {
      "week": [
        "15"
      ],
      "season": [
        "2021"
      ],
      "seasontypes": [
        "2"
      ]
    }
  },
  "count": 16,
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315",
  "id": "401326315",
  "uid": "s:20~l:28~e:401326315",
  "date": "2021-09-12T17:00Z",
  "name": "Philadelphia Eagles at Atlanta Falcons",
  "shortName": "PHI @ ATL",
  "season": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021"
  },
  "seasonType": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2"
  },
  "week": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/1"
```

[[TOP]](#top)

### EVENT COMPETITIONS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315/competitions/401326315

```json
{
  "id": "401326315",
  "guid": "b64e5dc5-c943-33e6-a6c9-44008b28b11a",
  "uid": "s:20~l:28~e:401326315~c:401326315",
  "date": "2021-09-12T17:00Z",
  "attendance": 68633,
  "type": {
    "id": "1",
    "text": "Standard",
    "abbreviation": "STD",
    "slug": "standard",
    "type": "standard"
  },
  "necessary": false,
```

[[TOP]](#top)

### FRANCHISES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises

```json
{
  "count": 32,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 2,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises/1"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises/2"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises/3"
    },
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises/1

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/franchises/1",
  "id": "1",
  "uid": "s:20~l:28~f:1",
  "slug": "atlanta-falcons",
  "location": "Atlanta",
  "name": "Falcons",
  "nickname": "Atlanta",
  "abbreviation": "ATL",
  "displayName": "Atlanta Falcons",
  "shortDisplayName": "Falcons",
  "color": "000000",
  "isActive": true,
  "logos": [
    {
```

[[TOP]](#top)

### GROUP STANDINGS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/1/standings

```json
{
  "count": 4,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "id": "0",
      "name": "overall",
      "displayName": "Overall Standings",
      "links": [
        {
          "language": "en-US",
          "rel": [
```

[[TOP]](#top)

### GROUP TEAMS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/1/teams

```json
{
  "count": 4,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/6"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/19"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/21"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/28"
    }
  ]
}
```

[[TOP]](#top)

### LEADERS API

**URL**: https://site.api.espn.com/apis/site/v3/sports/football/nfl/leaders?season=2021

```json
  "leaders": {
    "id": "0",
    "name": "TOTAL",
    "abbreviation": "Any",
    "categories": [
      {
        "name": "passingYards",
        "displayName": "Passing Yards",
        "abbreviation": "YDS",
        "leaders": [
          {
            "displayValue": "404",
            "value": 404,
            "rel": [
              "athlete"
            ],
            "athlete": {
              "id": "3139477",
              "uid": "s:20~l:28~a:3139477",
              "guid": "37d87523280a9d4a0adb22cfc6d3619c",
              "firstName": "Patrick",
              "lastName": "Mahomes",
              "displayName": "Patrick Mahomes",
              "fullName": "Patrick Mahomes",
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/leaders

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/leaders/0",
  "id": "0",
  "name": "total",
  "abbreviation": "TOTAL",
  "categories": [
    {
      "name": "totalPoints",
      "displayName": "Total Points",
      "shortDisplayName": "TP",
      "abbreviation": "TP",
      "leaders": [
        {
          "displayValue": "2673",
          "value": 2673,
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/leaders/0

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/leaders/0",
  "id": "0",
  "name": "total",
  "abbreviation": "TOTAL",
  "categories": [
    {
      "name": "totalPoints",
      "displayName": "Total Points",
      "shortDisplayName": "TP",
      "abbreviation": "TP",
      "leaders": [
        {
          "displayValue": "2673",
          "value": 2673,
```

[[TOP]](#top)

### NEWS API

**URL**: https://site.api.espn.com/apis/site/v2/sports/football/nfl/news

```json
{
  "header": "NFL News",
  "link": {
    "language": "en",
    "rel": [
      "index",
      "desktop",
      "league"
    ],
    "href": "https://www.espn.com/nfl/",
    "text": "All NFL News",
    "shortText": "All News",
    "isExternal": false,
    "isPremium": false
  },
```

[[TOP]](#top)

### ODD PREDICTORS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315/competitions/401326315/odds/1003/predictors

```json
{
  "count": 5,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "rank": 1,
      "total": "OVER",
      "value": 90.363,
      "displayValue": "90.4",
      "predictorCompetition": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326315/competitions/401326315"
      },
      "projectedWinner": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/8"
      },
      "cover": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/8"
      },
      "projectedCover": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/1"
      }
    },
```

[[TOP]](#top)

### POSITIONS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/positions/8

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/positions/8",
  "id": "8",
  "name": "Quarterback",
  "displayName": "Quarterback",
  "abbreviation": "QB",
  "leaf": true,
  "parent": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/positions/70"
  }
}
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/positions?limit=100

```json
{
  "count": 73,
  "pageIndex": 1,
  "pageSize": 100,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/positions/0"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/positions/1"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/positions/2"
    },
```

[[TOP]](#top)

### PROVIDERS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/providers/1003

```json
{
  "id": "1003",
  "name": "numberfire",
  "priority": 0
}
```

[[TOP]](#top)

### SCOREBOARD API

**URL**: https://site.api.espn.com/apis/site/v2/sports/football/nfl/scoreboard

```json
{
  "leagues": [
    {
      "id": "28",
      "uid": "s:20~l:28",
      "name": "National Football League",
      "abbreviation": "NFL",
      "slug": "nfl",
      "season": {
        "year": 2021,
        "startDate": "2021-07-17T07:00Z",
        "endDate": "2022-02-16T07:59Z",
        "type": {
          "id": "2",
          "type": 2,
```

[[TOP]](#top)

### SEASONS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons

```json
{
  "count": 100,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 4,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2019"
    },
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021",
  "year": 2021,
  "startDate": "2021-07-17T07:00Z",
  "endDate": "2022-02-16T07:59Z",
  "displayName": "2021",
  "type": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2",
    "id": "2",
    "type": 2,
    "name": "Regular Season",
    "abbreviation": "reg",
    "year": 2021,
    "startDate": "2021-09-09T07:00Z",
    "endDate": "2022-01-13T07:59Z",
```

[[TOP]](#top)

### SEASON ATHLETES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes

```json
{
  "count": 16438,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 658,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/4246273"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/4246281"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/4246289"
    },
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/14876

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/14876",
  "id": "14876",
  "uid": "s:20~l:28~a:14876",
  "guid": "2d6af5dcb3d3e2d4cf7227d4a8eb93cd",
  "type": "football",
  "alternateIds": {
    "sdr": "2268110"
  },
  "firstName": "Ryan",
  "lastName": "Tannehill",
  "fullName": "Ryan Tannehill",
  "displayName": "Ryan Tannehill",
  "shortName": "R. Tannehill",
  "weight": 217,
```

[[TOP]](#top)

### SEASON COACHES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/coaches?limit=50

```json
{
  "count": 32,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 2,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/coaches/17739"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/coaches/2552857"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/coaches/13162"
    },
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/coaches/4408695

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/coaches/4408695",
  "id": "4408695",
  "uid": "s:20~l:28~co:4408695",
  "firstName": "Kevin",
  "lastName": "Stefanski",
  "team": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/5"
  },
  "experience": 1,
  "careerRecords": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/coaches/4408695/record/0"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/coaches/4408695/record/2"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/coaches/4408695/record/3"
    }
  ],
  "coachSeasons": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2020/coaches/4408695"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/coaches/4408695"
    }
  ]
}
```

[[TOP]](#top)

### SEASON DRAFT API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft",
  "uid": "s:20~l:28~e:DRAFT~y:2021",
  "year": 2021,
  "numberOfRounds": 7,
  "displayName": "2021 National Football League Draft",
  "shortDisplayName": "2021 NFL Draft",
  "status": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/status"
  },
  "athletes": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/athletes"
  },
  "rounds": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/draft/rounds"
```

[[TOP]](#top)

### SEASON FUTURES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/futures

```json
{
  "count": 7,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/futures/1561",
      "id": 1561,
      "name": "Pro Football Champion",
      "futures": [
        {
          "provider": {
            "id": "40",
            "name": "DraftKings",
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/futures/1561

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/futures/1561",
  "id": 1561,
  "name": "Pro Football Champion",
  "futures": [
    {
      "provider": {
        "id": "40",
        "name": "DraftKings",
        "active": 1,
        "priority": 0
      },
      "books": [
        {
          "team": {
```

[[TOP]](#top)

### SEASON TEAMS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams

```json
{
  "count": 32,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 2,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/1"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/2"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/3"
    },
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/12

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/1",
  "id": "1",
  "guid": "49fd392a86fe4df31b779bbfa18b2ad5",
  "uid": "s:20~l:28~t:1",
  "alternateIds": {
    "sdr": "8802"
  },
  "slug": "atlanta-falcons",
  "location": "Atlanta",
  "name": "Falcons",
  "nickname": "Atlanta",
  "abbreviation": "ATL",
  "displayName": "Atlanta Falcons",
  "shortDisplayName": "Falcons",
```

[[TOP]](#top)

### SEASON TYPES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types

```json
{
  "count": 4,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/1"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/3"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/4"
    }
  ]
}
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2",
  "id": "2",
  "type": 2,
  "name": "Regular Season",
  "abbreviation": "reg",
  "year": 2021,
  "startDate": "2021-09-09T07:00Z",
  "endDate": "2022-01-13T07:59Z",
  "hasGroups": false,
  "hasStandings": true,
  "hasLegs": false,
  "groups": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups"
  },
```

[[TOP]](#top)

### TALENTPICKS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/talentpicks

```json
{
  "count": 176,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 8,
  "items": [
    {
      "pick": {
        "person": {
          "id": "1768",
          "firstName": "Damien",
          "lastName": "Woody",
          "displayName": "Damien Woody",
          "headshot": {
            "href": "https://a.espncdn.com/i/columnists/full/woody_damien.png",
```

[[TOP]](#top)

### TEAM API

**URL**: https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams

```json
{
  "sports": [
    {
      "id": "20",
      "uid": "s:20",
      "name": "Football",
      "slug": "football",
      "leagues": [
        {
          "id": "28",
          "uid": "s:20~l:28",
          "name": "National Football League",
          "abbreviation": "NFL",
          "shortName": "NFL",
          "slug": "nfl",
```

**URL**: https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/12

```json
{
  "team": {
    "id": "1",
    "uid": "s:20~l:28~t:1",
    "slug": "atlanta-falcons",
    "location": "Atlanta",
    "name": "Falcons",
    "nickname": "Atlanta",
    "abbreviation": "ATL",
    "displayName": "Atlanta Falcons",
    "shortDisplayName": "Falcons",
    "color": "000000",
    "alternateColor": "000000",
    "isActive": true,
    "logos": [
```

[[TOP]](#top)

### TEAM ATHLETES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/12/athletes

```json
{
  "count": 76,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 4,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/16963"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/3123963"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/16299"
    },
```

[[TOP]](#top)

### TEAM ATS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/12/ats

```json
{
  "count": 9,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "wins": 6,
      "losses": 8,
      "pushes": 0,
      "type": {
        "id": "0",
        "name": "atsOverall",
        "description": "Overall team season record against the spread"
      }
```

[[TOP]](#top)

### TEAM ATTENDANCE API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/12/attendance

```json
{
  "id": "0",
  "name": "Attendance",
  "abbreviation": "ATTND",
  "categories": [
    {
      "name": "home",
      "displayName": "Home",
      "shortDisplayName": "Home",
      "abbreviation": "home",
      "stats": [
        {
          "name": "games",
          "displayName": "Home Games",
```

[[TOP]](#top)

### TEAM COACHES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/12/coaches

```json
{
  "count": 1,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [{}]
}
```

[[TOP]](#top)

### TEAM DEPTHCHARTS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/12/depthcharts

```json
{
  "count": 3,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "id": "15",
      "name": "Base 3-4 D",
      "positions": {
        "lde": {
          "position": {
            "id": "11",
            "name": "Left Defensive End",
```

[[TOP]](#top)

### TEAM EVENTS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/12/events

```json
{
  "count": 20,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326621"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326618"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/events/401326603"
    },
```

[[TOP]](#top)

### TEAM INJURIES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/teams/12/injuries

```json
{
  "count": 63,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 3,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/4408854/injuries/-1252999"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/3048898/injuries/499227"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/3055899/injuries/499204"
    },
```

[[TOP]](#top)

### TEAM LEADERS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/12/leaders

```json
{
  "id": "0",
  "name": "TOTAL",
  "abbreviation": "Any",
  "categories": [
    {
      "name": "passingLeader",
      "displayName": "Passing Leader",
      "shortDisplayName": "PASS",
      "abbreviation": "PYDS",
      "leaders": [
        {
          "displayValue": "360-549, 4052 YDS, 30 TD, 13 INT",
          "value": 4052,
```

[[TOP]](#top)

### TEAM ODDS-RECORDS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/12/odds-records

```json
{
  "count": 10,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "abbreviation": "ML",
      "displayName": "Money Line Overall Record",
      "shortDisplayName": "Money Line",
      "type": "moneyLineOverall",
      "stats": [
        {
          "displayName": "Wins",
          "abbreviation": "W",
```

[[TOP]](#top)

### TEAM PROJECTION API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/12/projection

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/1/projection",
  "team": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/1"
  },
  "chanceToWinThisWeek": 0.59114,
  "chanceToWinDivision": 0,
  "projectedWins": 7.085,
  "projectedLosses": 9.908
}
```

[[TOP]](#top)

### TEAM RECORD API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/12/record

```json
{
  "count": 5,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "id": "0",
      "name": "All Splits",
      "abbreviation": "Any",
      "type": "total",
      "summary": "10-4",
      "displayValue": "10-4",
      "value": 0.7142857142857143,
```

[[TOP]](#top)

### TEAM ROSTER API

**URL**: https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/12/roster

```json
{
  "timestamp": "2021-12-21T12:39:06Z",
  "status": "success",
  "season": {
    "year": 2021,
    "type": 2,
    "name": "Regular Season"
  },
  "coach": [
    {
      "id": "17739",
      "firstName": "Arthur",
      "lastName": "Smith",
      "experience": 0
    }
```

[[TOP]](#top)

### TEAM SCHEDULE API

**URL**: https://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/12/schedule

```json
{
  "timestamp": "2021-12-21T12:39:07Z",
  "status": "success",
  "season": {
    "year": 2021,
    "type": 2,
    "name": "Regular Season",
    "displayName": "2021",
    "half": 1
  },
  "team": {
    "id": "1",
    "abbreviation": "ATL",
    "location": "Atlanta",
    "name": "Falcons",
```

[[TOP]](#top)

### TEAM STATISTICS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/12/statistics

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/1/statistics/0",
  "season": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021"
  },
  "team": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/1"
  },
  "splits": {
    "id": "0",
    "name": "All Splits",
    "abbreviation": "Any",
    "categories": [
      {
        "name": "general",
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/12/statistics/0

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/teams/12/statistics/0",
  "season": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021"
  },
  "team": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/12"
  },
  "splits": {
    "id": "0",
    "name": "All Splits",
    "abbreviation": "Any",
    "categories": [
      {
        "name": "general",
```

[[TOP]](#top)

### SEASONTYPE GROUPS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups

```json
{
  "count": 2,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/8"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/7"
    }
  ]
}
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/1

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/9",
  "uid": "s:20~l:28~g:9",
  "id": "9",
  "name": "National Football League",
  "abbreviation": "NFL",
  "shortName": "NFL",
  "season": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021"
  },
  "children": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/9/children"
  },
  "standings": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/9/standings"
  },
  "isConference": false,
  "slug": "national-football-league",
  "teams": {
    "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/groups/9/teams"
  }
}
```

[[TOP]](#top)

### SEASONTYPE LEADERS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/leaders

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/3/leaders",
  "id": "0",
  "name": "TOTAL",
  "abbreviation": "Any",
  "categories": [
    {
      "name": "passingYards",
      "displayName": "Passing Yards",
      "shortDisplayName": "PYDS",
      "abbreviation": "YDS",
      "leaders": [
        {
          "displayValue": "404",
          "value": 404,
          "rel": [
            "athlete"
          ],
          "athlete": {
            "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/3139477"
          },
          "team": {
            "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/12"
          },
          "statistics": {
            "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/3/athletes/3139477/statistics/0"
          }
        },
```

[[TOP]](#top)

### SEASONTYPE WEEKS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks

```json
{
  "count": 18,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 1,
  "items": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/1"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/2"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/3"
    },
```

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/6

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/6",
  "number": 6,
  "startDate": "2021-10-13T07:00Z",
  "endDate": "2021-10-20T06:59Z",
  "text": "Week 6",
  "teamsOnBye": [
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/1"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/18"
    },
    {
      "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/20"
```

[[TOP]](#top)

### VENUES API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/venues/3493

```json
{
  "id": "3493",
  "fullName": "Caesars Superdome",
  "address": {
    "city": "New Orleans",
    "state": "LA",
    "zipCode": "70112"
  },
  "capacity": 73000,
  "grass": false,
  "indoor": true,
  "images": [
    {
      "href": "https://a.espncdn.com/i/venues/nfl/day/3493.jpg",
```

[[TOP]](#top)

### WEEKLY EVENTS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/6/events

```json
{
  "$meta": {
    "parameters": {
      "week": [
        "6"
      ],
      "season": [
        "2021"
      ],
      "seasontypes": [
        "2"
      ]
    }
  },
  "count": 14,
```

[[TOP]](#top)

### WEEKLY QBR API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/6/qbr/10000

```json
{
  "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/6/qbr/10000",
  "count": 28,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 2,
  "items": [
    {
      "athlete": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/athletes/2330"
      },
      "team": {
        "$ref": "http://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/teams/27"
      },
      "event": {
```

[[TOP]](#top)

### WEEKLY TALENTPICKS API

**URL**: https://sports.core.api.espn.com/v2/sports/football/leagues/nfl/seasons/2021/types/2/weeks/6/talentpicks

```json
{
  "count": 154,
  "pageIndex": 1,
  "pageSize": 25,
  "pageCount": 7,
  "items": [
    {
      "pick": {
        "person": {
          "id": "1768",
          "firstName": "Damien",
          "lastName": "Woody",
          "displayName": "Damien Woody",
          "headshot": {
            "href": "https://a.espncdn.com/i/columnists/full/woody_damien.png",
```

</details>
