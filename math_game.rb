class MathGame
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @current_player = @player1
  end

  def start_game
    loop do
      puts "----- NEW TURN -----"
      turn = Turn.new
      turn.display_question
      answer = gets.chomp.to_i

      if turn.evaluate_response(answer)
        puts "Correct answer!"
        @current_player.increase_score(1)
      else
        puts "Wrong answer!"
        @current_player.decrease_lives
      end

      display_scores
      switch_turn

      break if game_over?
    end

    announce_winner
  end

  private

  def display_scores
    puts "Player 1:"
    @player1.display_score
    puts "Player 2:"
    @player2.display_score
  end

  def switch_turn
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def game_over?
    @player1.lives.zero? || @player2.lives.zero?
  end

  def announce_winner
    if @player1.lives.zero?
      puts "Player 2 wins with a score of #{@player2.score}"
    else
      puts "Player 1 wins with a score of #{@player1.score}"
    end
  end
end