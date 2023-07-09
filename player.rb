class Player
  attr_reader :lives, :score

  def initialize
    @lives = 3
    @score = 0
  end

  def decrease_lives
    @lives -= 1
  end

  def increase_score(points)
    @score += points
  end

  def display_score
    puts "Player score: #{@score}"
  end
end


