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
    @winner = check_winner
    declare_winner
  end

  def take_turn(player)
    position = nil
    while !position
      position = validate(player.select_position)
      puts 'Choose an open spot on the game board.' unless position
    end
    @board.place_mark(player.mark, position)
  end

  def validate(position)
    # did user enter anything?
    if position == ''
      return false
    else
      position = position.to_i
      # outside board?
      if position < 0 || position > @board.grid.length
        return false
      # spot occupied?
      elsif @board.grid[position]
        return false
      # acceptable input
      else
        return position
      end
    end
  end

  def next_player
    @current_player == @player_x ? @player_o : @player_x
  end

  def check_winner
  end

  def declare_winner
    puts 'Game over!'
  end
end

class Board
  attr_reader :grid

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
    # rows
    return @grid[0..2] if @grid[0..2].all? { |pos| pos == 'X' }
    return @grid[3..5] if @grid[3..5].all? { |pos| pos == 'X' }
    return @grid[6..8] if @grid[6..8].all? { |pos| pos == 'X' }
    return @grid[0..2] if @grid[0..2].all? { |pos| pos == 'O' }
    return @grid[3..5] if @grid[3..5].all? { |pos| pos == 'O' }
    return @grid[6..8] if @grid[6..8].all? { |pos| pos == 'O' }
    # columns
    return @grid[0] == 'X' && @grid[3] == 'X' && @grid[6] == 'X' 
    return @grid[1] == 'X' && @grid[4] == 'X' && @grid[7] == 'X' 
    return @grid[2] == 'X' && @grid[5] == 'X' && @grid[8] == 'X' 
    return @grid[0] == 'O' && @grid[3] == 'O' && @grid[6] == 'O' 
    return @grid[1] == 'O' && @grid[4] == 'O' && @grid[7] == 'O' 
    return @grid[2] == 'O' && @grid[5] == 'O' && @grid[8] == 'O' 
    # diagonals
    return @grid[0] == 'X' && @grid[4] == 'X' && @grid[8] == 'X' 
    return @grid[2] == 'X' && @grid[4] == 'X' && @grid[6] == 'X' 
    return @grid[0] == 'O' && @grid[4] == 'O' && @grid[8] == 'O' 
    return @grid[2] == 'O' && @grid[4] == 'O' && @grid[6] == 'O' 
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
    gets.chomp
  end

  def to_s
    mark
  end
end

game = TicTacToe.new
game.play_round
