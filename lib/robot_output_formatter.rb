class RobotOutputFormatter
  def initialize io
    @io = io
  end

  def puts robot
    robot.escape.map { |escape| @io.puts "GO #{escape.upcase}" }
  end
end