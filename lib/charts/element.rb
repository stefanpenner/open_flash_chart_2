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
  end
  
  module InstanceMethods
    def to_hash
      @hash
    end
  end
end

