require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @Team_1 = SportsTeam.new("Celtics", ["Pierce", "Koby"], "Old_Man_Greg", 0)
  end

  def test_get_name
    assert_equal("Celtics", @Team_1.name)
  end

  def test_get_players
    assert_equal(["Pierce", "Koby"], @Team_1.players)
  end

  def test_get_coach
    assert_equal("Old_Man_Greg", @Team_1.coach)
  end

  def test_set_coach
    @Team_1.coach = "Carter"
    assert_equal("Carter", @Team_1.coach)
  end

  def test_add_player
    @Team_1.add_player("Sam")
    assert_equal(3, @Team_1.players.length)
  end

  def test_player_check_true
    assert_equal(true, @Team_1.player_check("Koby"))
  end

  def test_player_check_false
    assert_equal(false, @Team_1.player_check("Alisha Mufasa the 15th"))
  end

  def test_add_results_win
    @Team_1.add_result("win")
    assert_equal(3, @Team_1.points)
  end

  def test_add_results_draw
    @Team_1.add_result("draw")
    assert_equal(1, @Team_1.points)
  end

  def test_add_results_loss
    @Team_1.add_result("loss")
    assert_equal(0, @Team_1.points)
  end

end
