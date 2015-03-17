
describe "#errors" do 
  
  it "math should work" do
    expect(4 + 4).to eq(4)
  end

  it "hashes should match" do
    expect({"one"=> 1, "two"=> 2}).to eq({"one"=>1, "two"=>4})
  end

  it "should be in range" do
    expect("superman").to start_with("cat").or end_with("woman")
  end

end
