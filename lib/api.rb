class API

    def self.get_makeup_by_tag(input)
        tag = ""
        if input == "a"
            tag = "natural"
        elsif input == "b"
            tag = "vegan"
        else
            tag = "fair+trade"
        end
        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_tags=#{tag}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        makeups = JSON.parse(response)
        makeups.each do |item|
            Makeup.new(item)
        end
    end

end