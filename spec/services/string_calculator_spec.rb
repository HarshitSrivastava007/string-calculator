require_relative "../../app/services/string_calculator"

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    it "should returns 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end
  end
end
