class User < ApplicationRecord
    has_many :expeditions
    has_many :sightings, through: :expeditions

    validates :name, uniqueness: true
    has_secure_password


end
