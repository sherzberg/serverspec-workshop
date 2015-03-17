
describe "#example" do 
  
  it "should have contain certain elements" do
    expect(1..5).to include(3)
  end

  it "has a method called to_a" do
    expect(1..2).to respond_to("to_a")
  end

  it "somebody should end with body with string" do
    expect("somebody").to match("body")
  end

  it "somebody should end with body with regex" do
    expect("somebody").to match(/^.*body$/)
  end
  
end
