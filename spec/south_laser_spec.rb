require "rspec"
require "south_laser"

describe SouthLaser do
  subject {SouthLaser.new 0}
  context "given a robot going west" do
    context "robot starts from even position" do
      [0,2,4,6,8].each do |position|
        it "should not hit robot at #{position}" do
          subject.hits_robot?(position, :west).should be_false
        end
      end
    end

    context "robot starts from odd position" do
      [1,3,5,7,9].each do |position|
        it "should hit robot at #{position}" do
          subject.hits_robot?(position, :west).should be_true
        end
      end
    end
  end

  context "given a robot going east" do
    it "should hit a robot starting at 0" do
      subject.hits_robot?(0, :east).should be_false
    end

    (1..10).each do |position|
      it "should not hit robot at #{position}" do
        subject.hits_robot?(position, :east).should be_false
      end
    end
  end
end