class Expedition < ApplicationRecord
    has_many :sightings
    has_many :cryptids, through: :sightings
    belongs_to :user

    validates :days, presence: true, numericality: true


    def region_map
        if self.region == "Pacific Northwest"
            return "https://www.google.com/maps/d/u/0/embed?mid=1dCHzQfq7ApL4yTv1muxoYBKnJ9aN1Djx"
        elsif self.region == "Southwest"
            return "https://www.google.com/maps/d/u/0/embed?mid=1qX97M6BLLY-LVhVWgGDdmAN5zIDeJJf_"
        elsif self.region == "Midwest"
            return "https://www.google.com/maps/d/u/0/embed?mid=1WYW1tpQtks89WWeIxEZMLNxw7vtG0UHf"
        elsif self.region == "Northeast"
            return "https://www.google.com/maps/d/u/0/embed?mid=1PCzlF5kb1vwVhkcn6pbKwK-DaK4wjO76"
        elsif self.region == "Southeast"
            return "https://www.google.com/maps/d/u/0/embed?mid=1wUx7pixC8175446eWFRpWxee984M2xfG"
        end 
    end 

    def self.pacific_northwest
        Expedition.all.select {|exp| exp.region == "Pacific Northwest"}.count
    end 

    def self.midwest
        Expedition.all.select {|exp| exp.region == "Midwest"}.count
    end 

    def self.northest
        Expedition.all.select {|exp| exp.region == "Northeast"}.count
    end 

    def self.southeast
        Expedition.all.select {|exp| exp.region == "Southeast"}.count
    end 

    def self.southwest
        Expedition.all.select {|exp| exp.region == "Southwest"}.count
    end 

    end 


