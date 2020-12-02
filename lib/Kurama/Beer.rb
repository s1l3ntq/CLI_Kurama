class Beer
    @@all = []
    attr_accessor :name, :brewery_type

    def initialize(name, brewery_type)
        @name= name
        @brewery_type = brewery_type
        @@all << self
    end

    def self.all
        @@all
    end
    
end