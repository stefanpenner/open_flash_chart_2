#
# Bar Graph 
#
# type: string, must be 'bar'
# alpha: number, between 0 (transparent) and 1 (opaque)
# colour: string, CSS colour
# text: string, the key
# font-size: number, size of the key text
# values: array of numbers, height of each bar
# 
#
# {
#   "elements":[
#     {
#       "type":      "bar",
#       "alpha":     0.5,
#       "colour":    "#9933CC",
#       "text":      "Page views",
#       "font-size": 10,
#       "values" :   [9,6,7,9,5,7,6,9,7]
#      }
#    ]
# }
#  
#
class Bar
  include Element

  hash_writer :alpha,
              :colour,
              :text,
              :values

  def initialize(hash = {})
    @hash = {}  
    @hash.merge(hash) 
    @hash[:type] = :bar
  end

  def font_size( args )
    @hash['font-size'] = args if args
  end
  
end

