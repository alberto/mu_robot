require "rspec"
require "stringio"
require "robot_output_formatter"


describe RobotOutputFormatter do
  io = StringIO.new
  subject { RobotOutputFormatter.new io}
  it "should format robot escape strategy" do
    robot = double
    robot.stub(:escape).and_return([:west, :east])
    subject.puts(robot)
    io.string.should == "GO WEST\nGO EAST\n"
  end
end