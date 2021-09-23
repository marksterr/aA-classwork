require "towers"

describe "Towers" do
  describe "#initialize" do
    it "should accept a number of stacks, n, as an arg" do
      expect{Towers.new(5)}.to_not raise_error
    end
    it "should create three arrays, one with n number of discs, other two are empty" do
    end
  end
end