class Appointment < ApplicationRecord
  belongs_to :customer
  belongs_to :attendant

  def customer_name
    customer.nome_completo if customer
  end

  def attendant_name
    attendant.name if attendant
  end
end