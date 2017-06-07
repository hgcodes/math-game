class Game

  def start
    puts "Welcome to the TwO-O-Player Math Game"
    @turn = Turn.new
    go_time
  end

  def go_time
    question = Question.new
    puts @turn.current_player_name + ": " + question.create_question
    choice = $stdin.gets.chomp
    if choice.to_i === question.evaluate_answer
      puts 'You answered correctly'
    else
      puts 'You answered incorrectly'
      @turn.current_player_wrong()
    end
    if (@turn.current_player_lives === 0)
      @turn.switch_turn
      puts "#{@turn.current_player_name} wins."
      puts '-----GAME OVER-----'
    else
      @turn.switch_turn
      puts @turn.scores
      puts '-----NEW TURN-----'
      go_time
    end
  end

end