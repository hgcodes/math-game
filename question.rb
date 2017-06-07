require_relative './game'

class Question

  def create_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    "What does #{@num1} plus #{@num2} equal?"
  end

  def evaluate_answer
    @num1 + @num2
  end

end
