require "rspec"
require "robot"


describe Robot, "should escape using best strategy for conveyors"  do
  it "should not ask strategy where there are no conveyors" do
    strategy = double
    robot = Robot.new [], strategy
    strategy.should_not_receive(:strategy_for)
    robot.escape
  end

  it "should ask strategy as many times as there are conveyors" do
    strategy = double
    robot = Robot.new [1,2,3], strategy
    strategy.should_receive(:strategy_for).exactly(3).times
    robot.escape
  end
end