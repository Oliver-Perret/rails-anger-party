class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :places
  has_many :bookings_as_renter, class_name: "Booking"
  has_many :bookings_as_owner, through: :places, source: :bookings

  # validates :name, presence: true, length: {minimum: 3}
  # validates :phone_number, presence: true
  # # validates :email, presence: true, uniqueness: true, format: { with: /\A.*@.*\.com\z/ }
  # validates :age, presence: true
end
