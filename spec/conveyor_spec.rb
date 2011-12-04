require "rspec"
require "conveyor"

describe Conveyor do
  it "should hit 0 times when there are no lasers" do
    conveyor = Conveyor.new [], 1
    conveyor.hits_for(:west).should == 0
  end

  it "should hit 0 times when no lasers hits" do
    laser = double('laser')
    laser.stub(:hits_robot?).and_return(false)
    conveyor = Conveyor.new [laser], 1
    conveyor.hits_for(:west).should == 0
  end

  it "should hit 2 times when 2 lasers hit" do
    laser = double('laser')
    laser.stub(:hits_robot?).and_return(true, false, false, true)
    conveyor = Conveyor.new [laser,laser,laser,laser], 1
    conveyor.hits_for(:west).should == 2
  end
end