class Robot
  def initialize conveyors, strategy
    @conveyors = conveyors
    @strategy = strategy
  end

  def escape
    @conveyors.map { |conveyor| @strategy.strategy_for(conveyor) }
  end
end