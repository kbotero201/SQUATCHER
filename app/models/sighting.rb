class Sighting < ApplicationRecord
    belongs_to :cryptid
    belongs_to :expedition
    belongs_to :user

    validates_format_of :date, :with => /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/, :message => "Date must be in the following format: yyyy-mm-dd"
    validates :date, presence: true 
    validates :location, presence: true 
    #validates :description, presence: true 

    def region_map
        if self.expedition.region == "Pacific Northwest"
            return "https://www.google.com/maps/d/u/0/embed?mid=1dCHzQfq7ApL4yTv1muxoYBKnJ9aN1Djx"
        elsif self.expedition.region == "Southwest"
            return "https://www.google.com/maps/d/u/0/embed?mid=1qX97M6BLLY-LVhVWgGDdmAN5zIDeJJf_"
        elsif self.expedition.region == "Midwest"
            return "https://www.google.com/maps/d/u/0/embed?mid=1WYW1tpQtks89WWeIxEZMLNxw7vtG0UHf"
        elsif self.expedition.region == "Northeast"
            return "https://www.google.com/maps/d/u/0/embed?mid=1PCzlF5kb1vwVhkcn6pbKwK-DaK4wjO76"
        elsif self.expedition.region == "Southeast"
            return "https://www.google.com/maps/d/u/0/embed?mid=1wUx7pixC8175446eWFRpWxee984M2xfG"
        end 
    end 

    def self.ten_most_recent
        Sighting.all.last(10)
    end

end


