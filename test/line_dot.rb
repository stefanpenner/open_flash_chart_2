require File.dirname(__FILE__) + '/test_helper'

class LineDotTest < Test::Unit::TestCase
  context "standard Line Dot " do
    setup do
      @line_dot = LineDot.create do |l|
        l.colour "#123123"
        l.text "asdf"
        l.width 10
        l.values [1,2,3]
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @line_dot[:colour], "#123123"
      assert_equal @line_dot[:text],  "asdf"
      assert_equal @line_dot[:width], 10
      assert_equal @line_dot[:values], [1,2,3]
    end
  end 

  context "attributes with a hyphen" do
    setup do
      @lineDot = LineDot.create do |l|
        h.font_size 5
        h.dot_size 4
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @lineDot['font-size'], 5
      assert_equal @lineDot['dot-size'],  4
    end
  end
end

