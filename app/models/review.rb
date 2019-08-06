class Review < ApplicationRecord
  belongs_to :booking
  # validations:
  validates :content, presence: true, length: { minimum: 60 }
  validates :rating, presence: true
end
