class Saloon < ApplicationRecord
  has_many :appointments
  has_many :attendants
  has_many :customers

  
  validates :razao_social, presence: true
  validates :nome_salao, presence: true
  validates :cnpj, presence: true, uniqueness: true, format: { with: /\A\d{11}\z/, message: "deve conter 11 dígitos" }
  
  def full_address
    address.endereco_completo if address
  end

  def address_number
    address.numero if address
  end

  def address_complement
    address.complemento if address
  end
  
  def state_name
    state.name if state
  end

  def city_name
    city.name if city
  end
end
