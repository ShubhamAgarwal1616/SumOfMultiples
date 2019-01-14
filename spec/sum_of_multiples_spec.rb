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

      it "all numbers are multiples of one" do
        numbers = SumOfMultiples.new(1)
        expect(numbers.sum_of_multiples(100)).to eql(4950)
      end

      it "only one factor is given" do
        numbers = SumOfMultiples.new(3)
        expect(numbers.sum_of_multiples(7)).to eql(9)
      end

      it "first factor is multiple of second factor" do
        numbers = SumOfMultiples.new(5, 25)
        expect(numbers.sum_of_multiples(51)).to eql(275)
      end

      it "each multiple is counted only once" do
        numbers = SumOfMultiples.new(3, 5)
        expect(numbers.sum_of_multiples(100)).to eql(2318)
      end

      it "limit for sum is very large" do
        numbers = SumOfMultiples.new(3, 5)
        expect(numbers.sum_of_multiples(1000)).to eql(233168)
      end
    end

  end
end
