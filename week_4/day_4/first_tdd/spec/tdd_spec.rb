require "tdd"

describe "my_uniq" do
  it "should accept an array as an arg" do
    expect { my_uniq([1,2,2,3,4,5]) }.to_not raise_error
  end

  it "should return a new array with all unique elements" do
    expect(my_uniq([1,2,2,3,4,5])).to eq([1,2,3,4,5]) 
  end
end

describe "Array" do

  describe "#two_sum" do
    context "when array is empty" do
      it "should return nil" do
        expect([].two_sum).to eq(nil)
      end
    end

    it "should return a new array with pairs of positions that add to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
    end
  end

end

describe "my_transpose" do
  arr1 = [[0, 1, 2],
          [3, 4, 5],
          [6, 7, 8]]

  arr2 = [[0, 3, 6],
          [1, 4, 7],
          [2, 5, 8]]
  it "should return a new 2d matrix with rows and columns swapped" do
    expect(my_transpose(arr1)).to eq(arr2)
  end
end