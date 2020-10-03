class API

    @try_id = (1..731).to_a
    #scrape current list of super id numbers

    @supers_alignment_list = []

    def self.get_makeup_by_tag(tag)
        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_tags=#{tag}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        makeups = JSON.parse(response)
    end

    def self.get_supers_by_alignment(alignment)
        @try_id.each do |id|
        url = "https://superheroapi.com/api/10157867805573507/#{id}/biography"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        #superhuman = JSON.parse(response)
        #filter out only the superheroes with the correct alignment
        @supers_alignment_list << response
        binding.pry
        end
        @supers_alignment_list
    end

    def self.get_supers_by_skill(skill)
        url = "https://superheroapi.com/api/10157867805573507/#{character-id}/powerstats"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        #iterate through all character ids with the correct alignment, return those with 90 or above in the appropriate skill
    end

end