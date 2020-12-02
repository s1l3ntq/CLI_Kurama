class API
    def self.get_brewery_types(brewery_type)
        url = "https://api.openbrewerydb.org/breweries?"
        response = HTTParty.get(url)
        response.each do |b|
            name = b["name"]
            brewery_type = b["brewery_type"]
            street = b["street"]
            Beer.new(name, brewery_type, street)
        end
        # name = response[0]["name"]
        # brewery_type = response[0]["brewery_type"]


    end

end 