require File.dirname(__FILE__) + '/test_helper'

class AxisTest < Test::Unit::TestCase
  context "axis" do
    setup do
      @axis = Axis.new(:type => :y) do |y|
        y.range( :min => 0, :max => 10, :steps => 5)
        y.tick_height 5
        y.grid_colour '#ffffff'
        y._3d true
        y.colour "#ffffff"
      end
    end

    should "contain its assigned attributes and there correct values" do
      assert_equal @axis[:type], :y
      assert_equal @axis[:range][:min],0
      assert_equal @axis[:range][:max],10
      assert_equal @axis[:range][:steps],5
      assert_equal @axis['tick-height'], 5
      assert_equal @axis['grid-colour'], "#ffffff"
      assert_equal @axis['3d'], true
      assert_equal @axis.to_hash.class, Hash
    end
  end 
end

