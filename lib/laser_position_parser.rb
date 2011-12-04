class LaserPositionParser
  def parse input, klass
    lasers = []
    input.chars.each_with_index do |element, index|
      lasers << klass.new(index) if is_laser?(element)
    end
    lasers
  end

  def is_laser? element
    element ==  "|"
  end
end