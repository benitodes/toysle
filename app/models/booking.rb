class Booking < ApplicationRecord
  belongs_to :toy
  belongs_to :user
  # validations
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
end
