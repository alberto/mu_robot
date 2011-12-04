require "rspec"
require "direction_strategy"

describe DirectionStrategy do
  it "go east when it gets hit less east" do
    conveyor = double
    conveyor.stub(:hits_for).with(:west).and_return(3)
    conveyor.stub(:hits_for).with(:east).and_return(2)
    subject.strategy_for(conveyor).should == :east
  end

  it "go west when it gets hit less west" do
    conveyor = double
    conveyor.stub(:hits_for).with(:west).and_return(3)
    conveyor.stub(:hits_for).with(:east).and_return(4)
    subject.strategy_for(conveyor).should == :west
  end

  it "go west when it gets hit equally" do
    conveyor = double
    conveyor.stub(:hits_for).with(:west).and_return(4)
    conveyor.stub(:hits_for).with(:east).and_return(4)
    subject.strategy_for(conveyor).should == :west
  end
end