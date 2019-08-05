class Toy < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :theme
  belongs_to :user
end
