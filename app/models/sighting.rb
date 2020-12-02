class Sighting < ApplicationRecord
    belongs_to :cryptid
    belongs_to :expedition

    validates_format_of :date, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy"
    validates :date, presence: true 
    validates :location, presence: true 
    #validates :description, presence: true 

end
