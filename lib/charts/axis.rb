class Axis
  def initialize(hash = {})
    @hash = hash
    yield self if block_given?
  end
  
  def [](key)
    @hash[key]
  end
  #custom methods
  def range( args )
    @hash[:range] = args
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
  [:stroke,:colour, :offset,:steps,:labels].each do |attribute|
    define_method attribute do |args|
      @hash[attribute.to_s.downcase.to_sym] = args if args
    end
  end

  def to_hash
    @hash
  end
end
