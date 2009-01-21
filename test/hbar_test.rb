require File.dirname(__FILE__) + '/test_helper'

class HbarTest < Test::Unit::TestCase
  context "standard horizontal bar" do
    setup do
      @hbar = Hbar.create do |h|
        h.colour "#123123"
        h.text "asdf"
        h.alpha "123"
        h.values [1,2,3]
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @hbar[:colour], "#123123"
      assert_equal @hbar[:alpha],  "123"
      assert_equal @hbar[:values], [1,2,3]
      assert_equal @hbar[:text], "asdf"
    end
  end 

  context "attributes with a hyphen" do
    setup do
      @hbar = Hbar.create do |h|
        h.font_size 5
      end
    end
    should "contain its assigned attributes and there correct values" do
      assert_equal @hbar['font-size'], 5
    end
  end
end


