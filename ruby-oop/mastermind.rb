class Mastermind
  def initialize
    @turns_remaining = 12
  end

  def play_round
    codebreaker = Player.new
    @code = generate_code
    p @code # debug
    while @turns_remaining > 0
      codebreaker.guess
      # feedback on guess
      @turns_remaining -= 1
    end
  end

  def generate_code
    colors = ['r','o','y','g','b','v']
    4.times do |i|
      color = rand(colors.length)
      code << colors[color]
    end
    code
  end
end


class Player
  def guess
    p "Guess: "
    gets.chomp
  end
end

game = Mastermind.new
game.play_round