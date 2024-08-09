class Saloon < ApplicationRecord
  has_many :appointments
  has_many :attendants
  has_many :customers

  
  validates :legal_name, presence: true
  validates :saloon_name, presence: true
  validates :cnpj, presence: true, uniqueness: true, format: { with: /\A\d{11}\z/, message: "deve conter 11 dígitos" }
  validates :telephone_number, presence: true
  
  def full_address
    address.full_address if address
  end

  def address_number
    address.address_number if address
  end

  def address_complement
    address.complemento if address
  end
  
  def state_name
    state.state_name if state
  end

  def city_name
    city.name if city
  end
end
