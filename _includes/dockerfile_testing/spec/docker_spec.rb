require 'docker'

describe "dockerfile built the image" do

  before(:all) do
    @image = Docker::Image.build_from_dir('.')
    p @image.json["Env"]
  end
 
  it "should exist" do
    expect(@image).not_to be_nil
  end
 
  it "should have CMD" do
    expect(@image.json["Config"]["Cmd"]).to include("echo")
  end

  it "should expose the default port" do
    expect(@image.json["Config"]["ExposedPorts"].has_key?("8000/tcp")).to be_truthy
  end
 
end
