# Horizontal Bar chart
# 
# values: array of objects. Each value must have a "right" and an optional "left" value
# 
# Example:
#
# {
#  "elements":[
#    {
#      "type":      "hbar",
#      "colour":    "#9933CC",
#      "text":      "Page views",
#      "font-size": 10,
#      "values" :   [{"right":10},{"right":15},{"left":13,"right":17}]
#    }
#  ]
# }
#

class Hbar 
  include Element

  hash_writer :alpha,
              :colour,
              :text,
              :values

  def initialize(hash = {})
    @hash = {}  
    @hash.merge(hash) 
    @hash[:type] = :hbar
  end

  def font_size(arg)
    @hash['font-size'] = arg if arg
  end 
end
