class Review < ApplicationRecord
  belongs_to :booking
  # validations:
  validates :content, presence: true, length: { minimum:5, message: 'The description must be longer than 5 characters' }
  validates :rating, presence: true, inclusion: { in: 1..5 }
end
