#
# {
#      "type":      "line_hollow",
#      "colour":    "#80a033",
#      "width":     2,
#      "text":      "Bounces",
#      "font-size": 10,
#      "dot-size":  6,
#      "values" :   [5,7,9,7,4,6,1,2,5]
#    }
#
class LineHollow
  include Element

  hash_writer :colour,
              :text,
              :values,
              :width

  def initialize(hash = {})
    @hash = {}  
    @hash.merge(hash) 
    @hash[:type] = :line_hollow
  end

  def font_size arg
    @hash['font-size'] = arg if arg
  end 

  def dot_size arg
    @hash['dot-size'] = arg if arg
  end
end
