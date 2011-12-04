require "rspec"
require "laser_position_parser"

describe LaserPositionParser do
  {
      "#####" => 0,
      "|||" => 3,
      "#|#|#|#|#|" => 5,
      "##||#|||#|#" => 6,
  }.each_pair do |input, laser_count|
    it "should return #{laser_count} lasers for #{input}" do
      subject.parse(input, Laser).size.should == laser_count
    end
  end

  it "should return 1 lasers for #|###" do
    subject.parse("#|###", Laser).size.should == 1
  end

  it "should return 5 lasers for |||||" do
    subject.parse("|||||", Laser).size.should == 5
  end

  it "should initialize each laser with its position" do
    laserClass = double
    laserClass.should_receive(:new).with(3)
    lasers = subject.parse("###|", laserClass)
  end
end