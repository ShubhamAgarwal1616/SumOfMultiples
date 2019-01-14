class SumOfMultiples

  attr_reader :numbers

  def initialize(*numbers)
    @numbers = numbers
  end

  def sum_of_multiples(range)
    if @numbers.length == 0 || @numbers == [0]
      0
    elsif @numbers == [1]
      (range * (range - 1)) / 2
    end
  end

end