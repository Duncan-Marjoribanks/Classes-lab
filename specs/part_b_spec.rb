require("minitest/autorun")
require("minitest/rg")
require_relative ("../part_b")

class TestTeam < MiniTest::Test



  def test_name
    team = Team.new("Reikland Reavers", ["Erik Vonn Eriksson", "Griff Oberwald", "Morg 'N Thorg"], "Sly Marbo")
    assert_equal("Reikland Reavers", team.name())
  end

  def test_players
    team = Team.new("Reikland Reavers", ["Erik Vonn Eriksson", "Griff Oberwald", "Morg N Thorg"], "Sly Marbo")
    assert_equal(["Erik Vonn Eriksson", "Griff Oberwald", "Morg N Thorg"], team.players())
  end

  def test_team_coach
    team = Team.new("Reikland Reavers", ["Erik Vonn Eriksson", "Griff Oberwald", "Morg 'N Thorg"], "Sly Marbo")
    assert_equal("Sly Marbo", team.coach())
  end

  def test_new_coach
    team = Team.new("Reikland Reavers", ["Erik Vonn Eriksson", "Griff Oberwald", "Morg 'N Thorg"], "Sly Marbo")
    team.coach = "Stinky Johnson Johnson"
    assert_equal("Stinky Johnson Johnson", team.coach())
  end

  def test_new_player_test
    team = Team.new("Reikland Reavers", ["Erik Vonn Eriksson", "Griff Oberwald", "Morg 'N Thorg"], "Sly Marbo")
    team.add_player("Zugg")
    assert_equal(["Erik Vonn Eriksson", "Griff Oberwald", "Morg 'N Thorg", "Zugg"], team.players())
  end

  def test_player_in_team
    team = Team.new("Reikland Reavers", ["Erik Vonn Eriksson", "Griff Oberwald", "Morg 'N Thorg"], "Sly Marbo")
    assert_equal(true, team.player_in_team("Griff Oberwald"))
  end

  def test_winners
    team = Team.new("Reikland Reavers", ["Erik Vonn Eriksson", "Griff Oberwald", "Morg 'N Thorg"], "Sly Marbo")
    assert_equal(1, team.winners(true))
  end


end
