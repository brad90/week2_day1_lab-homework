require('minitest/autorun')
require('minitest/rg')
require_relative('../part_b_sports_team')

class TestSportsTeam < Minitest::Test

  def test_sports_team_name
    sports_team = SportsTeam.new("Broncos", ["bob", "chad"], "Coach Carter", 0)
    assert_equal("Broncos", sports_team.name)
  end

  def test_sports_team_players
    sports_team = SportsTeam.new("Broncos", ["bob", "chad"], "Coach Carter", 0)
    assert_equal(["bob", "chad"], sports_team.players)
  end

  def test_sports_team_coach
    sports_team = SportsTeam.new("Broncos", ["bob", "chad"], "Coach Carter", 0)
    assert_equal("Coach Carter", sports_team.coach)
  end

  def test_if_player_is_in_the_team_or_not
    sports_team = SportsTeam.new("Broncos", ["bob", "chad"], "Coach Carter", 0)
    result = sports_team.find_player("bob")
    assert_equal(true, result)
  end

  def test_points_increased_for_a_win
    sports_team = SportsTeam.new("Broncos", ["bob", "chad"], "Coach Carter", 0)
    sports_team.win_or_lose("win")
    assert_equal(100, sports_team.points)
  end

  def test_points_no_change_for_a_loss
    sports_team = SportsTeam.new("Broncos", ["bob", "chad"], "Coach Carter", 0)
    sports_team.win_or_lose("lose")
    assert_equal(0, sports_team.points)
  end

end
