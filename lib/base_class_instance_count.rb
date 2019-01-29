class Parent
    @@instance_count = 0

    def initialize
        @@instance_count += 1
    end
    
    def self.number_of_instances
        @@instance_count
    end
end


class Child < Parent

    def initialize
        super
    end

end