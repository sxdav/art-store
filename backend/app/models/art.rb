class Art < ApplicationRecord
  belongs_to :artist

  validates :year, length: { is: 4 }
  validates :art_type, inclusion: {
    in: %w[Painting Drawing],
    message: "%{value} is not a valid art type"
  }
end
