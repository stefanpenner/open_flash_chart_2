require File.dirname(__FILE__) + '/test_helper'

class PieTest < Test::Unit::TestCase
  context "standard pie" do
    setup do
      @pie = Pie.create do |p|
        p.colours ["#123123"]
        p.alpha "123"
        p.values [1,2,3]
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @pie[:colours], ["#123123"]
      assert_equal @pie[:alpha],  "123"
      assert_equal @pie[:values], [1,2,3]
    end
  end 

  context "attributes with a hyphen" do
    setup do
      @pie = Pie.create do |p|
        p.start_angle "5px"
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @pie['start-angle'], "5px"
    end
  end
end

