class Beer
    @@all = []
    attr_accessor :name, :brewery_type, :street, :website_url

    def initialize(name, brewery_type, street, website_url)
        @name= name
        @brewery_type = brewery_type
        @street = street
        @website_url = website_url
        @@all << self
    end

    def self.all
        @@all
    end
    
end