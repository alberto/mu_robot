require "rspec"
require "robot_position_parser"

describe RobotPositionParser do
  {
    "X----" => 0,
    "-X---" => 1,
    "--X--" => 2,
    "---X-" => 3,
    "----X" => 4,
  }.each_pair do |input, index|
      it "should return #{index} for #{input}" do
        subject.parse(input).should == index
      end
  end
end

