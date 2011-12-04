class FactoryParser
  def parse lines, conveyor_parser
    conveyors = []
    while (not lines.empty?)
      conveyor_data = lines.shift(3)
      conveyors << conveyor_parser.parse(conveyor_data)
      lines.shift
    end
    conveyors
  end
end
