// TODO: please define the 'Coach' type
pub type Coach {
  Coach(
    name: String,
    former_player: Bool,
  )
}
// TODO: please define the 'Stats' type
pub type Stats {
  Stats(
    wins: Int,
    losses: Int,
  )
}
// TODO: please define the 'Team' type
pub type Team {
  Team(
    name: String,
    stats: Stats,
    coach: Coach,
  )
}

pub fn create_coach(name: String, former_player: Bool) -> Coach {
    Coach(name: name, former_player: former_player)
}

pub fn create_stats(wins: Int, losses: Int) -> Stats {
  Stats(wins:wins, losses:losses)
}

pub fn create_team(name: String, coach: Coach, stats: Stats) -> Team {
  Team(name:name, coach:coach, stats:stats)
}

pub fn replace_coach(team: Team, coach: Coach) -> Team {
  Team(..team,coach:coach)//record update spread syntax

}

pub fn is_same_team(home_team: Team, away_team: Team) -> Bool {
    home_team == away_team
}

pub fn root_for_team(team: Team) -> Bool {
    case team {
      //team.coach.name == "Gregg Popovich" -> True,
      Team(coach: Coach(name: "Gregg Popovich", ..), ..) -> True
      //team.coach.former_player == True -> True,
      Team(coach: Coach(former_player: True, ..), ..) -> True
      //team.stats.wins >=60 -> True,
      //Team(stats: Stats(wins: >=60, ..), ..) -> True
      _ if team.stats.wins >= 60 -> True
      _ if team.name == "Chicago Bulls" -> True
      _ if team.stats.losses > team.stats.wins -> True
      _ -> False
    } 
}