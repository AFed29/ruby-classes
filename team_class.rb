class Team

attr_reader :team_name, :players, :points
attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def find_player(player_to_find)
    for player in @players
      if player == player_to_find
        return true
      end
    end
  end

  def add_points_if_won_or_lost(won_or_lost)
    @points += 3 if won_or_lost == "won"
  end

end
