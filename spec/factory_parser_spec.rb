require "rspec"
require "factory_parser"

describe FactoryParser do
  it "should create conveyors with their corresponding information" do
    conveyor1 = ["#","X","#"]
    conveyor2 = ["|","X","|"]
    input = conveyor1 + [""] + conveyor2
    conveyor_parser = double
    conveyor_parser.should_receive(:parse).with(conveyor1)
    conveyor_parser.should_receive(:parse).with(conveyor2)
    subject.parse(input, conveyor_parser).size.should == 2
  end
end