class Address < ApplicationRecord
  belongs_to :customer
  belongs_to :city
  belongs_to :state

  def state_name
    state.name if state
  end

  def city_name
    city.name if city
  end
end
