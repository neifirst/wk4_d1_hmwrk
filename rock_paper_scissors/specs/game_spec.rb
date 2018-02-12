require("minitest/autorun")
require("minitest/rg")
require_relative("../models/game")

class TestGame < Minitest::Test

  def setup

    play1 = "rock"
    play2 = "scissors"
    play3 = "paper"

    @game1 = Game.new(play1, play2)
    @game2 = Game.new(play1, play3)
    @game3 = Game.new(play2, play1)
    @game4 = Game.new(play2, play3)
    @game5 = Game.new(play3, play2)
    @game6 = Game.new(play3, play1)

  end


  def test_winner__rock_scissors
    assert_equal("Rock wins!", @game1.winner())
  end

  def test_winner__rock_paper
    assert_equal("Paper wins!", @game2.winner())
  end

  def test_winner__scissors_rock
    assert_equal("Rock wins!", @game3.winner())
  end

  def test_winner__scissors_paper
    assert_equal("Scissors wins!", @game4.winner())
  end

  def test_winner__paper_scissors
    assert_equal("Scissors wins!", @game5.winner())
  end

  def test_winner__paper_rock
    assert_equal("Paper wins!", @game6.winner())
  end


end
