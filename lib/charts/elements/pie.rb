# type: string, must be 'pie'
# start-angle: number, the angle of the first pie slice
# colours: array of strings, CSS colour
# alpha: number, between 0 (transparent) and 1 (opaque)
# stroke: number, the outline width
# animate: boolean, animate the pie chart
# values: array of objects, value of each pie slice. May be a number or a slice object
#
# Example:
# 
#  {
#   "elements":[
#     {
#       "type":      "pie",
#       "start-angle": 180,
#       "colours":   ["#d01f3c","#356aa0","#C79810","#73880A","#D15600","#6BBA70"],
#       "alpha":     0.6,
#       "stroke":    2,
#       "animate":   1,
#       "values" :   [0,2,{"value":0,"text":"zero"},2,6]
#      }
#    ]
# }
#

class Pie 
  include Element

  hash_writer :colours, 
              :alpha, 
              :stroke, 
              :animate, 
              :values

  def initialize(hash = {})
    @hash = {}
    @hash[:type] = :pie
    @hash.merge(hash)
  end

 # stupid hypenated attributes
  def start_angle args
    @hash['start-angle'] = args if args
  end
end
