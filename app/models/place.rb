class Place < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :bookings
  has_many :users, through: :bookings
  mount_uploader :photo, PhotoUploader

  validates :title, presence: true,  uniqueness: true
  validates :photo, presence: true

  # geocode stuff
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validates :address, presence: true,  uniqueness: true
  # validates :description, presence: true
  # validates :price, presence: true
  # validates :destroy_pack, presence: true, inclusion: { in: ["Soil", "Damage", "Destroy"] }
  # validates :category, presence: true, inclusion: { in: ["House", "Field", "Hut", "Wharehouse", "Flat", "Castle", "Shop"] }
  # validates :rate, presence: true, inclusion: { in: [1,2,3,4,5] }
end
