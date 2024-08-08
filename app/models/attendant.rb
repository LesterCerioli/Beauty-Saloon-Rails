class Attendant < ApplicationRecord
  has_many :appointments
  
  validates :attendant_name, presence: true
end
