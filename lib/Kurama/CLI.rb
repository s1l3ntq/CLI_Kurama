class CLI
    
    def start 
        puts "Welcome to the world of Breweries!"
        puts "Select your favorite type of brew!"
        input = gets.chomp
        API.get_brewery_types(input)
        Beer.all.each.each.with_index(1) do |b, index|
            puts "#{index}. #{b.name}"
        end
    end

end