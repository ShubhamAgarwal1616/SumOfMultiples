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
    else
      @numbers.inject(0) do |sum, factor|
        while factor < range
          sum += factor
          factor += factor
        end
        sum
      end
    end
  end

end