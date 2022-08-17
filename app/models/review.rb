class Review < ApplicationRecord
  validates :content, :rating, :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true, in: (0..5) }
end
