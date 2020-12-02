class Expedition < ApplicationRecord
    has_many :sightings
    has_many :cryptids, through: :sightings

    validates :days, presence: true, numericality: true

end
