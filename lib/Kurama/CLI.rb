class CLI
    
    def start 
        puts "Welcome to the world of Breweries!"
        puts "Press any key to continue."
        # puts "Select your favorite brew company!"
        input = gets.chomp
        API.get_brewery_types(input)
        list_results
        
    end
    
    def list_results
        Beer.all.each.each.with_index(1) do |b, index|
            puts "#{index}. #{b.name}"
        end
    end
end