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
  end
end
