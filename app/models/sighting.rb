class Sighting < ApplicationRecord
    belongs_to :cryptid
    belongs_to :expedition
end
