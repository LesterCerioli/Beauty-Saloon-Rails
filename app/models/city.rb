class City < ApplicationRecord
  belongs_to :state
  has_many :addresses

  validates :city_name, presence: true
end
