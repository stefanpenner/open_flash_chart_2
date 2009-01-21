require File.dirname(__FILE__) + '/test_helper'

class LineTest < Test::Unit::TestCase
  context "standard horizontal bar" do
    setup do
      @line = Line.create do |l|
        l.colour "#123123"
        l.text "asdf"
        l.alpha "123"
        l.values [1,2,3]
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @line[:colour], "#123123"
      assert_equal @line[:alpha],  "123"
      assert_equal @line[:values], [1,2,3]
      assert_equal @line[:text], "asdf"
    end
  end 

  context "attributes with a hyphen" do
    setup do
      @line = Line.create do |h|
        h.font_size 5
        h.dot_size 4
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @line['font-size'], 5
      assert_equal @line['dot-size'], 4
    end
  end
end



