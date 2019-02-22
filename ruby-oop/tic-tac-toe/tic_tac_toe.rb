class TicTacToe
  def initialize
    @winner = nil
  end

  def play_round
    @board = Board.new
    @player_x = Player.new('X')
    @player_o = Player.new('O')
    @current_player = @player_x
    until @board.three_in_a_row? || @board.full?
      take_turn(@current_player)
      @current_player = next_turn
    end
    declare_winner
  end

  def take_turn
    # make move based on player input
  end

  def next_turn
    @current_player == player_x ? player_o : player_x
  end

  def declare_winner
  end
end

class Board
  def initialize
    @board = Array.new(9)
  end

  def three_in_a_row?
    # check for 3 marks in a row
  end

  def full?
    # check whether any open spaces remain
  end

  def reset
    self.initialize
  end
end

class Player
  def initialize(mark)
    @mark = mark
  end

  def make_move(board, position)
    board[position] = @mark
  end
end

game = TicTacToe.new
game.play_round