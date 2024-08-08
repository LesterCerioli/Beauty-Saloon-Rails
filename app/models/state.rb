class State < ApplicationRecord
  has_many :cities
  has_many :addresses

  validates :state_name, presence :true
end