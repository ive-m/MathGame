class Turn
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def display_question
    puts "What is #{@num1} + #{@num2}?"
  end

  def evaluate_response(answer)
    answer == @num1 + @num2
  end
end
