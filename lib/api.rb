class API

    def self.get_makeup_by_tag(input)
        tag = ""
        if input == "a"
            tag = "natural"
        elsif tag == "b"
            tag = "vegan"
        elsif tag == "c"
            tag = "fair+trade"
        end
        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_tags=#{tag}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        makeups = JSON.parse(response)
        #binding.pry
    end

end