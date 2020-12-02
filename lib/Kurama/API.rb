class API
    def self.get_brewery_types(brewery_type)
        url = "https://api.openbrewerydb.org/breweries?"
        response = HTTParty.get(url)
        name = response[0]["name"]
        brewery_type = response[0]["brewery_type"]
        

        binding.pry
    end

end 