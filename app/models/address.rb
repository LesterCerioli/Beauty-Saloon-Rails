class Address < ApplicationRecord
  belongs_to :customer
  belongs_to :city
  belongs_to :state

  def state_name
    state.state_namename if state
  end

  def city_name
    city.city_name if city
  end
end
