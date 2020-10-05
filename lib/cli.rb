class CLI

    def run

        puts ""
        puts "Welcome to the Ethical Makeup Finder! This app helps you choose makeup brands and products that align with your values."
        puts ""
        puts "Which of the following qualities is most important to you in a makeup?"
        puts "Enter the corresponding letter or type 'exit' to close the app."
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
            puts ""
            puts "Searching for some great matches..."
            puts ""
            API.get_makeup_by_tag(input)
            x = Makeup.brands.length
            y = Makeup.product_types.length
            #binding.pry
            puts ""
            puts "Okay, we found #{x} brands offering that type of product in #{y} categories of makeup."
            puts ""
            puts "Would you like to:"
            puts ""
            puts "a. See the list of brands, or"
            puts "b. filter by type of makeup (e.g. lipstick, blush, etc.)?"
            puts ""
            input_2 = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '') 
            while input_2 != "a" && input_2 != "b"
                puts ""
                puts "Sorry, I don't understand. Please enter 'a' for a list of brands or 'b' to search by product."
                puts ""
                input_2 = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '') 
            end
            if input_2 == "a"
                puts ""
                puts "Here is your list of brands to check out!"
                puts ""
                Makeup.brands.sort.each_with_index {|brand, index| puts "#{index + 1}. #{brand.split.map(&:capitalize).join(' ')}"}
                puts ""
                puts "Thank you for using the Ethical Makeup Finder. Goodbye!"
                puts ""
            else
                puts ""
                puts "What product are you looking for? Enter by number:"
                puts ""
                sorted_products = Makeup.product_types.sort
                Makeup.product_types.sort.each_with_index {|product_type, index| puts "#{index + 1}. #{product_type.split("_").map(&:capitalize).join(' ')}"}
                puts ""
                input_3 = gets.to_i
                while input_3.to_i <= 0 || input_3.to_i > Makeup.product_types.length 
                    puts ""
                    puts "Sorry, I don't understand. Please enter a number from the list."
                    puts ""
                    input_3 = gets.to_i
                end
                product_list = Makeup.all.select {|product| product.product_type == sorted_products[input_3 - 1]}
                puts ""
                puts "Here is your list of products!"
                puts ""
                product_list.each_with_index {|product, index| puts "#{index + 1}. #{product.name}"}
                puts ""
                puts "To learn more about a product, enter its number."
                puts ""
                input_4 = gets.to_i
                while input_4.to_i <= 0 || input_4.to_i > product_list.length 
                    puts ""
                    puts "Sorry, I don't understand. Please enter a number from the list."
                    puts ""
                    input_4 = gets.to_i
                end
                selected_product = Makeup.all.detect {|product| product.id == product_list[input_4 - 1].id}
                puts ""
                puts selected_product.name.split.map(&:capitalize).join(' ')
                puts "Brand: #{selected_product.brand.split.map(&:capitalize).join(' ')}"
                puts "Price: $#{selected_product.price}"
                puts "Purchase online at #{selected_product.product_link}"
                puts ""
                puts "Thank you for using the Ethical Makeup Finder. Goodbye!"
                puts ""
            end
        else
            puts ""
            puts "Thank you for using the Ethical Makeup Finder. Goodbye!"
            puts ""
        end

    end

end