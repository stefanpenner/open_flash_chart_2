module Element
  def self.included(base)
    base.send( :extend, ClassMethods)
    base.send( :include, InstanceMethods)
  end
  
  module ClassMethods
    def hash_writer *args 
      args.each do |attribute|
        define_method attribute do |args|
          @hash[attribute] = args if args
        end
      end
    end
 
    def create(args={})
      temp = new(args)
      yield temp if block_given? 
      temp
    end 
  end
  
  module InstanceMethods
    def to_hash
      @hash
    end
  
    def [](attribute)
      @hash[attribute]
    end
  end
end

