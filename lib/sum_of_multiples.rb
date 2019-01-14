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
        current_factor = factor
        if @numbers.index(factor) ==  0
          while factor < range
            sum += factor
            factor += current_factor
          end
        end
        sum
      end
    end
  end

end