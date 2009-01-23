require File.dirname(__FILE__) + '/test_helper'

class  LineHollowTest < Test::Unit::TestCase
  context "standard Line Dot " do
    setup do
      @line =  LineHollow.create do |l|
        l.colour "#123123"
        l.text "asdf"
        l.width 10
        l.values [1,2,3] 
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @line[:colour], "#123123"
      assert_equal @line[:text],  "asdf"
      assert_equal @line[:width], 10
      assert_equal @line[:values], [1,2,3]
    end
  end 

  context "attributes with a hyphen" do
    setup do
      @line= LineHollow.create do |l|
        l.font_size 5
        l.dot_size  4
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @line['font-size'], 5
      assert_equal @line['dot-size'],  4
    end
  end
end


