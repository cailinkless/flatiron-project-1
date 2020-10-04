class CLI

    def run

        puts ""
        puts "Welcome to the Ethical Makeup Finder! This app helps you choose makeup brands and products that align with your values."
        puts ""
        puts "Which of the following qualities is most important to you in a makeup?"
        puts "Enter the corresponding letter or type 'exit' to close the app at any time."
        puts ""
        puts "a. Natural"
        puts "b. Vegan"
        puts "c. Fair Trade"
        puts ""
        input = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '')
        #add a "to quit at any time" message/method?
        unless input == "exit"
            while input != "a" && input != "b" && input != "c"
                puts ""
                puts "Sorry, I don't understand. Please choose 'a.', 'b.' or 'c.'"  #(OR 'exit' to exit)."
                puts ""
                input = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '')    
            end
            if input == "a"
                #binding.pry
                API.get_makeup_by_tag(input)
                x = Makeup.brands.length
                y = Makeup.product_types.length
                puts ""
                puts "Okay, we found #{x} brands offering natural products in #{y} categories of makeup."
                puts ""
                puts "Would you like to:"
                puts ""
                puts "a. See the list of brands, or"
                puts "b. filter by type of makeup (e.g. lipstick, blush, etc.)?"
                puts ""
            elsif input == "b"
                puts ""
                puts "Okay, we found (x) brands offering vegan products in (y) categories."
                puts ""
                puts "Would you like to:"
                puts ""
                puts "a. See the list of brands, or"
                puts "b. filter by type of makeup (e.g. lipstick, blush, etc.)?"
                puts ""
            else input == "c"
                puts ""
                puts "Okay, we found (x) brands offering fair trade products in (y) categories."
                puts ""
                puts "Would you like to:"
                puts ""
                puts "a. See the list of brands, or"
                puts "b. filter by type of makeup (e.g. lipstick, blush, etc.)?"
                puts ""
            end
            input_2 = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '') 
            while input_2 != "a" && input_2 != "b"
                puts "Sorry, I don't understand. Please enter 'a' for a list of brands or 'b' to search by product."
            end
            if input_2 == "a"
                puts ""
                puts "Here is your list of brands!"
                puts ""
            else
                puts ""
                puts "What product are you looking for?"
                puts ""
            end
        else
            puts ""
            puts "Thank you for using the Ethical Makeup Finder. Goodbye!"
            puts ""
        end

    end

end