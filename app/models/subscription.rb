class Subscription < ApplicationRecord
  belongs_to :saloon

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :actibe, inclusion: { in: [true, false] }
  validates :subscription_code, presence: true, uniqueness: true

  before_create :generate_subscription_code

  private

  def generate_subscription_code
    self.subscription_code = loop do
      code = SecureRandom.alphanumeric(10).upcase
      break code unless Subscription.exists?(subscription_code: code)
    end
  end
end
