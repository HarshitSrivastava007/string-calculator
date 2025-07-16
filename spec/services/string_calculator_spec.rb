require_relative "../../app/services/string_calculator"

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    it "should returns 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "returns number itself when only one number is provided" do
      expect(calculator.add("1")).to eq(1)
    end

    it "returns sum of two numbers" do
      expect(calculator.add("1,5")).to eq(6)
    end

    it "returns sum of any amount of numbers" do
      expect(calculator.add("1,2,3,4")).to eq(10)
    end

    it "handles new lines as delimiters" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end
