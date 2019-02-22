class TicTacToe
  def initialize
    @rounds_played = 0
    @winner = nil
  end

  def play_round
    @board = Board.new
    @player_x = Player.new('X')
    @player_o = Player.new('O')
    until @board.row?
      # players take turns
    end
    @rounds_played += 1
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
  def initialize(mark)
    @mark = mark
  end

  def make_move(position)
  end
end

game = TicTacToe.new
game.play_round