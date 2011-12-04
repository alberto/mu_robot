require_relative "laser_position_parser"
require_relative "robot_position_parser"
require_relative "conveyor"
require_relative "laser"
require_relative "south_laser"

class ConveyorParser
  def initialize
    @laser_parser = LaserPositionParser.new
    @robot_parser = RobotPositionParser.new
  end

  def parse input
    Conveyor.new(@laser_parser.parse(input[0], Laser) + @laser_parser.parse(input[2], SouthLaser), @robot_parser.parse(input[1]))
  end
end