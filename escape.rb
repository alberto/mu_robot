require_relative './lib/factory_parser'
require_relative './lib/robot'
require_relative './lib/robot_output_formatter'
require_relative './lib/conveyor_parser'
require_relative './lib/direction_strategy'

def conveyors
  lines = IO.readlines ARGV[0]
  parser = FactoryParser.new
  conveyor_parser = ConveyorParser.new
  parser.parse lines, conveyor_parser
end

def write_escape_strategy_for robot
  file = File.new ARGV[1], "w+"
  out = RobotOutputFormatter.new file
  out.puts robot
end

robot = Robot.new(conveyors, DirectionStrategy.new)
write_escape_strategy_for robot


