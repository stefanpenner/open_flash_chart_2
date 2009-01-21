# Line chart
#
# values: Array of numbers:
#
# Example:
# {
#  "elements":[
#    {
#      "type":      "line_dot",
#      "colour":    "#736AFF",
#      "text":      "Avg. wave height (cm)",
#      "font-size": 10,
#      "width":     2,
#      "dot-size":  4,
#      "values" :   [1.5,1.69,1.88,2.06,2.21,2.34,null,2.35,2.23,2.08]
#    }
#  ]
# }
#

class LineDot 
  include Element

  hash_writer :alpha,
              :colour,
              :text,
              :values,
              :width

  def initialize(hash = {})
    @hash = {}  
    @hash.merge(hash) 
    @hash[:type] = :line_dot
  end

  def font_size arg
    @hash['font-size'] = arg if arg
  end 

  def dot_size arg
    @hash['dot-size'] = arg if arg
  end
end
