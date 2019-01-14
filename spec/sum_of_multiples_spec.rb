require "sum_of_multiples"

describe SumOfMultiples do

  describe ".calculate_score" do

    context "Test for calculating sum of unique multiples of given numbers up to a given number" do
      it "no factors means an empty sum" do
        numbers = SumOfMultiples.new()
        expect(numbers.sum_of_multiples(1000)).to eql(0)
      end

      it "multiple of zero is only zero" do
        numbers = SumOfMultiples.new(0)
        expect(numbers.sum_of_multiples(1000)).to eql(0)
      end

    end

  end
end
