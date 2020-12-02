class CLI
    
    def start 
        puts "Welcome to the world of Breweries!"
        puts "Select your favorite type of brew!"
        input = gets.chomp
        API.get_brewery_types(input)
    end

end