class Booking < ApplicationRecord
  belongs_to :toy
  belongs_to :user
  has_one :review, dependent: :destroy
  # validations
  validates :start_date, :end_date, presence: true, availability: true
  validates :total_price, presence: true
  validate :end_date_after_start_date

  private

  # The private method **end_date_after_start_date** validates that the *end_date* is not before the *start_date*.
  # If it is, we add an **error** to the **ActiveRecord object**.
  # The other **custom validator** (notice that the option being passed in line 6 of the above
  # snippet `availability: true` is not a native rails validator) uses a different technique.
  # We can write custom validators which *inherit* from `ActiveModel::EachValidator`
  # custom validator files in app/models/concerns

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
