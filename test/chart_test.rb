require File.dirname(__FILE__) + '/test_helper'

class ChartTest < Test::Unit::TestCase
  context "basic chart" do
    setup do
      @chart = Chart.new do |c|
        c.title "hi"
      end
    end

    should "contain its assigned attributes and there correct values" do
      assert_equal @chart[:title], "hi"

      assert_equal @chart.to_hash.class, Hash
    end
  
    should "create correct graphs" do
       assert_equal @chart.graph(:pie).class, Pie
       assert_equal @chart.graph(:bar).class, Bar
       assert_equal @chart.graph(:hbar).class, Hbar
       assert_equal @chart.graph(:line).class, Line
       assert_equal @chart.graph(:line_dot).class, LineDot
       assert_equal @chart.graph(:line_hollow).class, LineHollow
    end

    should "create an axis" do
      assert_equal @chart.axis(:y).class, Axis 
    end
  
    should "generate json" do
      @chart.to_json #figureout some to easily and actually validate this
    end
  end 
end


