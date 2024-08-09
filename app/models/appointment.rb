class Appointment < ApplicationRecord
  belongs_to :customer
  belongs_to :attendant

  
  validates :appointment_date, presence: true
  validates :appointment_time, presence: true
  validates :customer_name, presence: true
  validates :attendant_name, presence: true
  
  def customer_name
    customer.nome_completo if customer
  end

  def attendant_name
    attendant.name if attendant
  end
end