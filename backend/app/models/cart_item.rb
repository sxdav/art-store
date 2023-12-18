class CartItem < ApplicationRecord
  belongs_to :art
  belongs_to :costumer
end
