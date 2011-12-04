class DirectionStrategy
  def strategy_for conveyor
    return :east if west_hits_for(conveyor) > east_hits_for(conveyor)
    :west
  end

  def west_hits_for conveyor
    conveyor.hits_for :west
  end

  def east_hits_for conveyor
    conveyor.hits_for :east
  end
end