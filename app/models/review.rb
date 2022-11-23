class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating,
            presence: true,
            comparison: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :restaurant_id, presence: true
end
