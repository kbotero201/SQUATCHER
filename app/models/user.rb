class User < ApplicationRecord
    has_many :expeditions
    has_many :sightings, through: :expeditions

    validates :name, presence: true, uniqueness: true
    validates :years_experience, presence: true 
    has_secure_password

    before_create { |user| user.name = user.name.capitalize }


end
