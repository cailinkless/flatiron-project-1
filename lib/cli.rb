class CLI

    def run
        puts ""
        puts "Welcome to the Ethical Makeup Finder! This app helps you choose makeup brands and products that align with your values."
        puts ""
        puts "Which of the following qualities is most important to you in a makeup?"
        puts "Enter the corresponding letter or type 'exit' to close the app at any time."
        puts ""
        puts "a. Natural / Organic"
        puts "b. Vegan / Cruelty-Free"
        puts "c. Fair Trade"
        puts ""
        priority_input = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '')
        #add a "to quit at any time" message/method?
        if priority_input == "a"
            #returns a list with appropriate tags
            puts ""
            puts "Okay, we found (x) brands offering natural / organic products in (y) categories."
            puts ""
            puts "Would you like to:"
            puts ""
            puts "a. See the list of brands, or"
            puts "b. filter by type of makeup (e.g. lipstick, blush, etc.)?"
            puts ""
        elsif priority_input == "b"
            puts ""
            puts "Okay, we found (x) brands offering vegan / cruelty-free products in (y) categories."
            puts ""
            puts "Would you like to:"
            puts ""
            puts "a. See the list of brands, or"
            puts "b. filter by type of makeup (e.g. lipstick, blush, etc.)?"
            puts ""
        elsif priority_input == "c"
            puts ""
            puts "Okay, we found (x) brands offering vegan / cruelty-free products in (y) categories."
            puts ""
            puts "Would you like to:"
            puts ""
            puts "a. See the list of brands, or"
            puts "b. filter by type of makeup (e.g. lipstick, blush, etc.)?"
            puts ""
        elsif priority_input == "exit"
            puts ""
            puts "Goodbye!"
            puts ""
            #need way to fully close out program here? or to close out at any time
        else
            puts ""
            puts "Sorry, I don't understand. Please choose 'a.', 'b.' or 'c.' (OR 'exit' to exit)."
            puts ""
            #need a way to loop back into the program
        end
    end

end