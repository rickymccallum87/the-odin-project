class TicTacToe
  def initialize
    @rounds_played = 0
    @winner = nil
  end

  def play_round
  end

  def declare_winner
  end
end

class Board
  def initialize
    @board = Array.new(9)
  end

  def row?
    # check for run of 3 marks
  end

  def reset
    self.initialize
  end
end

class Player
  def make_move(position)
  end
end
