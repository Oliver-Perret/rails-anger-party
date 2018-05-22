class Booking < ApplicationRecord

  belongs_to :renter, class_name: "User", foreign_key: "user_id"
  belongs_to :place
  has_one :owner, through: :place

  # validates :start_date, presence: true
  # validates :end_date, presence: true

end
