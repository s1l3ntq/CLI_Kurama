class CLI
    
    def start 
        puts "Welcome to the world of Breweries!"
        puts "                    /
        |
     .-/',;\-.
     |'\\;;;\'
     |:| \;'
     |'|
     |:|
____________|'|______
|'.           |:|      '.
|  '. ___________________'.
|    |.-------------------.._
|    ||       |'|         || `--._
|    || _..--'|:|'--.._   ||      `-._
|    |||'--..____..--'|   |[]        ||
|    |||              |   ||         ||
|    |||              |   ||         ||
|    ||]'--..____..--'[   ||         ||
|    |||              |   ||         ||
|    |L|              |   ||         ||
|    |||              |   ||         J|
|    ||]'--..____..--'[   ||         ||
|    |||              |   ||         ||
|    |||              |.  |[]        ||
|    ||'--..______..--' '.||         ||
|    |'-------------------'|         ||
'.  | Beer Box ||..___..||`--._     ||
LGB '.|____________________|     `--._||

------------------------------------------------"
        # puts "Press enter to see our list of breweries!"
        # input = gets.chomp
        # API.get_brewery_types(input)
        brew_companies
        list_results
       
        
    end

    def brew_companies
        sleep(2)
        puts "***************************"
        puts "Press enter to see our list of breweries!"
        input = gets.chomp
        API.get_brewery_types(input)
    end
        
    
    def list_results
        Beer.all.each.with_index(1) do |b, index|
            puts "#{index}. #{b.name}"
        end
        select_breweries
    end

    def select_breweries
        puts "***************************"
        puts "***************************"
        puts "Pick a watering hole you'd love to visit!"
        puts "***************************"
        input = gets.chomp.to_i
        index = input - 1
        blurry_vision(input)
        selection = Beer.all[index]
        puts "***************************"
        puts "Brewery Name: " + selection.name
        puts "---------------------"
        puts "Address: " + selection.street
        puts "---------------------"
        puts "Brew Type: " + selection.brewery_type
        visit_website(selection)
        drunk_spins
    end
#if the return is an empty string how do I make a paramater for it (15th company)
    def visit_website(selection)
        puts "**************************"
        puts "Would you like to visit their website? y/n"
        input = gets.chomp.downcase
        if input == "y"
            puts "**************************"
            selection.website_url
        else
            drunk_spins
        end
    end

    def drunk_spins
        puts "***************************"
        puts "***************************"
        puts "Want to view other breweries? y/n"
        input = gets.chomp.downcase
        if input == "y" 
            list_results 
        else
            puts "**************************"
            puts "Go have a pint!"
            puts "**************************"
            puts "                                                _.........._
                                              ,'            `.
                                              |`-==========-'|
                                             /                \
                                             \    ________    /
                                              |,-'        `-.|
                              _               |`-.________.-'|
                       ____,-' `-.            |  :       :   |
                    _.' .--.\.    \           |    : :  .    |
                 _.' `-.`--'  `.   \          |:  : :  :  .  |
                /       \ `.-' /`-. `-.       |      : '     |
 ==============/`-.      `-.` /.-' `.  \======|    : : . :   |========
              _\   \        `-. \.-' \.' hjw  |     :        |
       ____ .' \,-. `.         `.\.-'         \       :      /
      /  .-`--./   \  \     ___.'              `._:______'_.'
    ,-`-/  ___/__._'   /_.-'
   (  .-`-(__ /  `.`-''
    `/   |/  `|    |
     `--' \   \    |
           `--'`._.'

-----------------------------------------------"
            puts "PLEASE DRINK RESPONSIBLY!"
            exit
            
        end
    end
    
    def blurry_vision(input)
        
       if input < 1 || input > 20
        puts "Whoa you must be seeing things! Please try again."
        sleep(2)
        list_results

       end
    end
       


end