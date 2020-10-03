class API

    @try_id = (1..731).to_a
    #scrape current list of super id numbers

    @supers_alignment_list = []

    def self.get_makeup_by_tag(tag)
        if tag == "a"
            url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_tags=#{tag}"
        elsif tag == "b"
            url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_tags=#{tag}"
        elsif tag == "c"
            url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_tags=#{tag}"
        end
        uri = URI(url)
        response = Net::HTTP.get(uri)
        makeups = JSON.parse(response)
        #binding.pry
    end

end