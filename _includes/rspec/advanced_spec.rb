
describe "#advanced" do 
  
  it "should have contain certain exact elements" do
    expect(1..5).to contain_exactly(1, 2, 3, 4, 5)
  end

  it "should have contain certain exact matching elements" do
    expect(["somebody", 3]).to contain_exactly(
      a_string_starting_with("some"),
      a_value_between(1, 5)
    )
  end

  it "should start and end with expected values" do
    expect((1..5).to_a).to start_with(1).and end_with(5)
  end

  it "random should be random" do
    (1..10).to_a.each do
      expect(rand(3)).to eq(0).or eq(1).or eq(2)
      expect(rand(3)).to_not eq(3)
    end
  end

end
