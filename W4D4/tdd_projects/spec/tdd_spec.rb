require 'rspec'
require 'tdd'

describe Array do
  describe "#my_uniq" do
    arr = [1,2,1,3,3]
    it "returns unique values" do
      expect(arr.my_uniq).to eq([1,2,3])
    end

    it "returns a new arr" do
      expect(arr.my_uniq.object_id).not_to eql(arr.object_id)
    end
  end

  describe "#two_sum" do
    arr = [-1, 0, 2, -2, 1]
    it "has all the correct pairs" do
      expect(arr.two_sum.sort).to eq([[0,4],[2,3]])
    end
    
    it "should return sorted pairs" do
      expect(arr.two_sum).to eq(arr.two_sum.sort)
    end

    # it "returns the positions where the elements sum to zero" do
    #   expect(arr.two_sum).to eq([[0,4],[2,3]])
    # end
  end
end

describe "#my_transpose" do
  let(:arr) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}

  it "should raise an error if does not take in an array" do
    expect{my_transpose("string")}.to raise_error("not an array")
  end

  it "transposes the given array" do
    expect(my_transpose(arr)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end

  # it "cannot use built in method Array#transpose" do
  #   expect(my_transpose(arr)).not_to receive(:transpose)
  # end
  
end


describe "#stock_picker" do
  subject(:stocks) {[5, 6, 3, 10, 1]}
  
  it "returns the most profitable pair of days" do
    expect(stock_picker(stocks)).to eq([2,3])
  end


end