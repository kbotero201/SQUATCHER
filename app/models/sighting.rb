class Sighting < ApplicationRecord
    belongs_to :cryptid
    belongs_to :expedition
    belongs_to :user

    validates_format_of :date, :with => /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/, :message => "Date must be in the following format: yyyy-mm-dd"
    validates :date, presence: true 
    validates :location, presence: true 
    #validates :description, presence: true 

end