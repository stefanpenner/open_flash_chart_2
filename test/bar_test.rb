require File.dirname(__FILE__) + '/test_helper'

class BarTest < Test::Unit::TestCase
  context "standard bar" do
    setup do
      @bar = Bar.create do |bar|
        bar.colour "#123123"
        bar.alpha "123"
        bar.values [1,2,3]
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @bar[:colour], "#123123"
      assert_equal @bar[:alpha],  "123"
      assert_equal @bar[:values], [1,2,3]
    end
  end 

  context "attributes with a hyphen" do
    setup do
      @bar = Bar.create do |bar|
        bar.font_size "5px"
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @bar['font-size'], "5px"
    end
  end
end
