class Costumer < ApplicationRecord
  has_many :cart_items
  has_many :orders

  validates :email, uniqueness: true, format: {
    with: URI::MailTo::EMAIL_REGEXP
  }
end
