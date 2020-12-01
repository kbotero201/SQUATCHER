class Cryptid < ApplicationRecord
    has_many :sightings
    has_many :expeditions, through: :sightings
end
