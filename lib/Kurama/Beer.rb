class Beer
    @@all = []
    attr_accessor :name, :brewery_type, :street

    def initialize(name, brewery_type, street)
        @name= name
        @brewery_type = brewery_type
        @street = street
        @@all << self
    end

    def self.all
        @@all
    end
    
end