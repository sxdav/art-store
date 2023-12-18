class OrderItem < ApplicationRecord
  belongs_to :art
  belongs_to :order
end
