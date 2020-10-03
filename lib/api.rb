class API

    #scrape current list of super id numbers

    def self.get_supers_by_alignment(alignment)
        url = "https://superheroapi.com/api/10157867805573507/#{id}/biography"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        supers = JSON.parse(response)
        #iterate through all character id numbers, isolate alignment, return only those with proper alignment
    end

    def self.get_supers_by_skill(skill)
        url = "https://superheroapi.com/api/10157867805573507/#{character-id}/powerstats"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        #iterate through all character ids with the correct alignment, return those with 90 or above in the appropriate skill
    end

end