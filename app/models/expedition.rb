class Expedition < ApplicationRecord
    has_many :sightings
    has_many :cryptids, through: :sightings

    validates :days, presence: true, numericality: true


    def self.california
        Expedition.all.select {|exp| exp.region == "California"}.count
    end 

    def self.new_york
        Expedition.all.select {|exp| exp.region == "New York"}.count
    end 

    def self.illinois
        Expedition.all.select {|exp| exp.region == "Illinois"}.count
    end 

    def self.washington
        Expedition.all.select {|exp| exp.region == "Washington"}.count
    end 

    def self.florida
        Expedition.all.select {|exp| exp.region == "Florida"}.count
    end 



end
