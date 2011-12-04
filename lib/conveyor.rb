class Conveyor
  def initialize lasers, robot_position
    @lasers = lasers
    @robot_position = robot_position
  end

  def hits_for direction
    @lasers.count { |laser| laser.hits_robot? @robot_position, direction }
  end
end