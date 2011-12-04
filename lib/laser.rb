class Laser
  def initialize position
    @position = position
  end

  def hits_robot? starting_position, direction
    return false if going_opposite_direction? starting_position, direction
    will_hit_robot_at? starting_position
  end

  def going_opposite_direction? starting_position, direction
    (direction == :west and starting_position < @position) or
    (direction == :east and starting_position > @position)
  end

  def will_hit_robot_at? starting_position
    return starting_position % 2 == @position % 2
  end
end
