class Customer < ApplicationRecord
  has_many :appointments

  validates :nome_completo, presence: true
  validates :cpf, presence: true, uniqueness: true, format: { with: /\A\d{11}\z/, message: "deve conter 11 dígitos" }
  validates :data_nascimento, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :numero_telefone, presence: true
end
