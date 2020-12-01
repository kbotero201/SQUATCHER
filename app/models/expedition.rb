class Expedition < ApplicationRecord
    has_many :sightings
    has_many :cryptids, through: :sightings


end
