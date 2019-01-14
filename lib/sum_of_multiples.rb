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
      multiples = []
      @numbers.inject(0) do |sum, factor|
        current_factor = factor
        while factor < range
          if !multiples.include?(factor)
            sum += factor
          end
          multiples << factor
          factor += current_factor
        end
        sum
      end
    end
  end

end