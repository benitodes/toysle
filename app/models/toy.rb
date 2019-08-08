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

  #add photo uploader to the toys
  mount_uploader :picture, PhotoUploader

  # geocode:
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # **Flatpickr** will plug into each of the date fields to display a nice date-picker, but before we do that,
  #   we need our backend to send to the front-end a list of all the **unavailable dates**.
  #   Accordingly to **flatpickr**’s documentation, it is possible to pass an **option** to **disable** dates
  #   as an array of ranges of dates `[{ from: "2018-05-01, to: "2018-05-20"}]`.
  #   Let’s add a method `#unavailable_dates` to our Toy model to do just that:

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
