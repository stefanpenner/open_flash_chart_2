#  OFC2::Chart.new do |chart|
#    chart.title = "123123"
#    chart.animate = true

#    chart.x_axis do |x|
#      x.range( min, max, steps )
#      x.legend do

#      end
#    end
#    
#    chart.y_axis do |y|
#      y.range( min, max, steps )
#      y.legend do
#      
#      end
#    end

#   chart.3d_bar do |bar|
#      bar.values = []
#      bar.color = ''
#    end

#    chart.line do |line|
#      line.values = @balance_sums
#      line.halo_size= 0
#      line.width= 2
#      line.dot_size= 6
#      line.colour = "#FA8B37"
#    end
#   end  

class Chart
  
  def initialize
    @hash = Hash.new
    @hash[:elements] = []
    yield self if block_given?
  end

  def to_hash
    @hash
  end
  def to_json
    to_hash.to_json
  end
  
  def title(args = {})
    @hash[:title] = args
  end

  def graph(type, args={})
   
    temp = case type
      when :pie         then Pie.new( args )
      when :bar         then Bar.new( args )
      when :hbar        then HBar.new( args )
      when :line        then Line.new( args )
      when :line_dot    then LineDot.new( args )
      when :line_hollow then LineHollow.new( args )
    end 
  
    yield temp if block_given?

    @hash[:elements] << temp.to_hash
  end
 
  def axis( type, args ={})
    temp = Axis.new(args)
    yield temp if block_given?
    @hash["#{type}_axis".to_sym] = temp
  end
end

if __FILE__ == $0
  c = Chart.new do |chart|
    chart.title( :text => "hi", 
                 :style => "asdasd")

    chart.axis(:y) do |y|
      y.range :min => 0, :max => 10
    end
  
    chart.axis(:x, :range => { :min => 0, :max => 10}) do |x|
      x.labels ["123123", "123123"]
      x.tick_height 5
    end
  
    chart.graph(:bar) do |bar|
      bar.colour "#123123"
      bar.alpha   "123"
      bar.values [12,1,1,1,1,1]
    end
  end

  puts c.to_json
  
end
