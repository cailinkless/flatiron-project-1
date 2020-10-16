class Makeup

    @@all = []

#delete unused attr_accessors?
    attr_accessor :id, :brand, :name, :price, :price_sign, :currency, :image_link, :product_link, :website_link, :description, :rating, :category, :product_type, :tag_list, :created_at, :updated_at, :product_api_url, :api_featured_image, :product_colors

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="), value)}
        @@all << self
    end

    def self.all
        @@all
    end

    def self.brands
        raw_brand_list = self.all.collect {|makeup_item| makeup_item.brand}
        brands = raw_brand_list.uniq.reject {|brand| brand == nil}
    end

    def self.product_types
        raw_product_list = self.all.collect {|makeup_item| makeup_item.product_type}
        product_types = raw_product_list.uniq
    end

    def self.what_can_i_afford(i)
        self.all.select {|makeup| makeup.price.to_i < i}
    end

end