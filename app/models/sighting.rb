class Sighting < ApplicationRecord
    belongs_to :cryptid
    belongs_to :expedition
    belongs_to :user

    validates_format_of :date, :with => /\d{4}-\d{2}-\d{2}/, :message => "must be in the following format: yyyy/mm/dd"
    validates :date, presence: true 
    validates :location, presence: true 
    #validates :description, presence: true 

end