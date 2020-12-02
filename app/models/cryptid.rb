class Cryptid < ApplicationRecord
    has_many :sightings
    has_many :expeditions, through: :sightings

    validates :name, presence: true 
    validates :description, presence: true 
end
