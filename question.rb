class Questions
  attr_reader :number_one, :number_two

  def self.number_one
    @number_one = rand(1..20)
  end

  def self.number_two
    @number_two = rand(1..20)
  end

  def self.question_answer(input)
    input.to_i == (@number_one + @number_two)
  end
end


