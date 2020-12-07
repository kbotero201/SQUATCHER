class Expedition < ApplicationRecord
    has_many :sightings
    has_many :cryptids, through: :sightings
    belongs_to :user

    validates :days, presence: true, numericality: true


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
