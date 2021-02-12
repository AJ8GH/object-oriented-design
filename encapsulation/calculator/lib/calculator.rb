class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

  def print_answer(answer)
    display.print_answer(answer)
  end

  private

  attr_reader :display

  def initialize(display = Display.new)
    @display = display
  end
end
