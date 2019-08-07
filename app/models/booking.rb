class Booking < ApplicationRecord
  belongs_to :toy
  belongs_to :user
  has_one :review, dependent: :destroy
  # validations
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
end
