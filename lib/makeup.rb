class Makeup

    @@all = []

    attr_accessor :name, :tag_list, :brand, :product_type, :price, :product_link

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="), value)}
    end

    def self.all
        @@all
    end

    def create_new_makeup(attributes)
        new_makeup = Self.new(attributes)
        @@all << new_makeup
    end

    def create_by_tag(tag)
        makeups = API.get_makeup_by_tag(tag)
        makeups.collect do |item|
            Self.create_new_makeup(item)
        end
    end

end