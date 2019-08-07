class Toy < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  belongs_to :theme
  belongs_to :user
  # validations:
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 60 }
  validates :daily_price, presence: true
  validates :address, presence: true
end
