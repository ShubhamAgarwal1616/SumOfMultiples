class SumOfMultiples

  attr_reader :numbers

  def initialize(*numbers)
    @numbers = numbers
  end

  def sum_of_multiples(range)
    if @numbers.length == 0
      0
    end
  end

end