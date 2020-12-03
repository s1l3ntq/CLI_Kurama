class CLI
    
    def start 
        puts "Welcome to the world of Breweries!"
        puts "Press enter to see our list of breweries!"
        # puts "Select your favorite brew company!"
        input = gets.chomp
        API.get_brewery_types(input)
        list_results
        select_breweries
        drunk_spins
        
    end
    
    def list_results
        Beer.all.each.with_index(1) do |b, index|
            puts "#{index}. #{b.name}"
        end
    end

    def select_breweries
        puts ":-0 :-) :-0 :-) :-0 :-) :-0 :-) :-0 :-D"
        puts ":-0 :-) :-0 :-) :-0 :-) :-0 :-) :-0 :-D"
        puts "Pick a watering hole you'd love to visit!"
        puts ":-0 :-) :-0 :-) :-0 :-) :-0 :-) :-0 :-D"
        input = gets.chomp.to_i
        index = input - 1
        selection = Beer.all[index]
        puts selection.name
        puts selection.street
        puts selection.brewery_type
    end

    def drunk_spins
        puts ":-0 :-) :-0 :-) :-0 :-) :-0 :-) :-0 :-D"
        puts ":-0 :-) :-0 :-) :-0 :-) :-0 :-) :-0 :-D"
        puts "Want to view other breweries? y/n"
        input = gets.chomp.downcase
        if input == "y" 
            start 
        else
            puts "Lets go get drunk!"
            puts "PLEASE DRINK RESPONSIBLY!"
            exit
            
        end
    end



end