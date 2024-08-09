class Address < ApplicationRecord
  belongs_to :customer
  belongs_to :city
  belongs_to :state

  validates :full_address, presence: true
  validates :address_number, presence :true
  validates :complement, presence :true
  validates :district, presence :true
  
  def state_name
    state.state_namename if state
  end

  def city_name
    city.city_name if city
  end
end
