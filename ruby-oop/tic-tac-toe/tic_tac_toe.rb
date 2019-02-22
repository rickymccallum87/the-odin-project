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
      @current_player = next_player
    end
    declare_winner
  end

  def take_turn(player)
    puts "Player #{player}'s move: "
    position = gets.chomp
    @board[position] = player.mark
  end

  def next_player(current)
    @current_player == player_x ? player_o : player_x
  end

  def declare_winner
    puts 'Draw!'
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
    @board.all?
  end

  def reset
    self.initialize
  end
end

class Player
  attr_reader :mark

  def initialize(mark)
    @mark = mark
  end

  def to_s
    mark
  end
end

game = TicTacToe.new
game.play_round