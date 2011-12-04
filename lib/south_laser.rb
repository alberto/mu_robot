class SouthLaser < Laser
  def will_hit_robot_at? starting_position
    !super
  end
end