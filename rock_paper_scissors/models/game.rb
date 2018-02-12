class Game

  def initialize(play1, play2)
    @play1 = play1
    @play2 = play2
  end

  def winner

    if @play1 == "rock" and @play2 == "scissors"
      return "Rock wins!"
    elsif @play1 == "rock" and @play2 == "paper"
      return "Paper wins!"
    elsif @play1 == "scissors" and @play2 == "paper"
      return "Scissors wins!"
    elsif @play1 == "scissors" and @play2 == "rock"
      return "Rock wins!"
    elsif @play1 == "paper" and @play2 == "scissors"
      return "Scissors wins!"
    elsif @play1 == "paper" and @play2 == "rock"
      return "Paper wins!"
    end

  end



end
