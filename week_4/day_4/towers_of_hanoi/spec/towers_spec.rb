require "towers"

describe "Towers" do

  let(:tower) { Towers.new(6) }

  describe "#initialize" do
    it "should accept a number of stacks, n, as an arg" do
      expect{Towers.new(5)}.to_not raise_error
    end

    it "should create three arrays, one with n number of discs, other two are empty" do
      expect(tower.arr1.length).to eq(6)
      expect(tower.arr2.length).to eq(0)
      expect(tower.arr3.length).to eq(0)
    end
  end

  describe "#get_move" do 
    it "should take in two arguments, a first pile and second pile, then remove top disc from first pile and place into second pile" do
      tower.get_move(1, 3)
      expect(tower.arr1.length).to eq(5)
      expect(tower.arr3.length).to eq(1)
    end
  end

  describe "#won?" do
    it "should check if "
  end

end

