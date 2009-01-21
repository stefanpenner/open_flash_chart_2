class Axis
  def initialize(hash = {})
    @hash = hash
  end
  
  #custom methods
  def range( args )
    @hash[:max] = args[:max]     if args[:max]
    @hash[:min] = args[:min]     if args[:min]
    @hash[:steps] = args[:steps] if args[:steps]
  end

  def tick_height(args)
    @hash['tick-height'] = args if args
  end
 
  def grid_colour(args)
    @hash['grid-colour'] = args if args
  end

  def _3d(args)
    @hash['3d'] = args if args
  end

  # generic hash writer methods
  #
  # def attribute( args )
  #   @hash[:attribute] = args if args
  # end
  #

  [:max,:min,:stroke,:colour, :offset,:steps,:labels].each do |attribute|
    define_method attribute do |args|
      @hash[attribute.to_s.downcase.to_sym] = args if args
    end
  end

  def to_json
    @hash.to_json
  end
end
