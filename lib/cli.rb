class CLI

    def run
        puts ""
        puts "Welcome to SuperRecruits, the world's premiere organization for finding Super Heroes & Villains for hire since 2020!"
        puts ""
        puts "Do you want to hire a SuperHelper? Enter 'Yes' to begin recruiting or 'No' to leave the program."
        puts ""
        consent_input = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '')
        #add a "to quit at any time" message/method?
        if consent_input == "yes"
            puts ""
            puts "Great! Please answer a few questions so we can match you with your ideal Super."
            puts "Is your scheme:" 
            puts ""
            puts "a. benevolent" 
            puts "b. nefarious"
            puts "c. neutral"
            puts ""
            alignment_input = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '')
            if alignment_input == "a"
                puts ""
                puts "Great! Sounds like you need a Super Hero."
                puts ""
                @alignment = "good" #is this where this should go?
            elsif alignment_input == "b"
                puts ""
                puts "Oooh. Sounds like you need a Super Villain."
                puts ""
                @alignment = "evil"
            elsif alignment_input == "c"
                # no alignment preference
                puts ""
                puts "Okay, great-- both Heroes and Villains might be willing to take this assignment."
                puts ""
                @alignment = "neutral"
            else
                puts ""
                puts "Sorry, I don't understand. Please choose a., b., or c."
                puts ""
                #need a way to loop back into the program
            end
            binding.pry 
            API.get_supers_by_alignment(@alignment)
            puts "Okay, so what is the most important skill a Super would need to complete your assignment?"
            puts ""
            puts "a. Intelligence"
            puts "b. Strength"
            puts "c. Speed"
            puts "d. Durability"
            puts "e. Power" #clarify what exactly this is???
            puts "f. Combat"
            puts ""
            priority_skill = gets.strip.downcase.gsub(/[^a-z0-9\s]/i, '')
            #return a list of appropriate supers
        elsif consent_input == "no"
            puts ""
            puts "That's okay. We hope you will think of SuperRecruits in future for all your Superhuman needs."
            puts ""
            #need way to fully close out program here?
        else
            puts ""
            puts "Sorry, I don't understand. Please enter 'Yes' or 'No'."
            puts ""
            #need a way to loop back into the program
        end
    end

end