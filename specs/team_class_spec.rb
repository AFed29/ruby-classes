require('minitest/autorun')
require_relative('../team_class')

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Spurs", ["Kane", "Erikson", "Alli", "Lloris"], "Pochettino")
  end

  def test_return_team_name
    team_name = @team.team_name()
    assert_equal("Spurs", team_name)
  end

  def test_return_players
    players = @team.players()
    assert_equal(["Kane", "Erikson", "Alli", "Lloris"], players)
  end

  def test_return_coach
    coach = @team.coach()
    assert_equal("Pochettino", coach)
  end

  def test_set_coach
    @team.coach="Conte"
    coach = @team.coach()
    assert_equal("Conte", coach)
  end

  def test_add_player
    @team.add_player("Son")
    players = @team.players()
    assert_equal(["Kane", "Erikson", "Alli", "Lloris", "Son"], players)
  end

  def test_find_player_in_team
    result = @team.find_player("Lloris")
    assert_equal(true, result)
  end

  def test_return_points
    points = @team.points()
    assert_equal(0, points)
  end

  def test_add_points_if_won
    @team.add_points_if_won_or_lost("won")
    points = @team.points()
    assert_equal(3, points)
  end

  def test_no_points_added_if_lost
    @team.add_points_if_won_or_lost("lost")
    points = @team.points()
    assert_equal(0, points)
  end

end
