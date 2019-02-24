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
      @board.display
      @current_player = next_player
    end
    declare_winner
  end

  def take_turn(player)
    @board.place_mark(player.mark, player.select_position)
  end

  def next_player
    @current_player == @player_x ? @player_o : @player_x
  end

  def declare_winner
    puts 'Game over!'
  end
end

class Board
  def initialize
    @grid = Array.new(9)
  end

  def display
    p @grid
  end

  def place_mark(mark, position)
    @grid[position] = mark
  end

  def three_in_a_row?
    # should only return true or false
    return @grid[0..2] if @grid[0..2].all? { |pos| pos == 'X' }
    return @grid[3..5] if @grid[3..5].all? { |pos| pos == 'X' }
    return @grid[6..8] if @grid[6..8].all? { |pos| pos == 'X' }
    # etc
  end

  def full?
    @grid.all?
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

  def select_position
    puts "Player #{mark}'s move: "
    gets.chomp.to_i
  end

  def to_s
    mark
  end
end

game = TicTacToe.new
game.play_round
