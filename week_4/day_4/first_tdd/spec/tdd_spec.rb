require "tdd"

describe "my_uniq" do
  it "should accept an array as an arg" do
    expect { my_uniq([1,2,2,3,4,5]) }.to_not raise_error
  end

  it "should return a new array with all unique elements" do
    expect(my_uniq([1,2,2,3,4,5])).to eq([1,2,3,4,5]) 
  end
end