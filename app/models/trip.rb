class Trip < ApplicationRecord
  belongs_to :profile
  has_many :bookings

  mount_uploader :photo, PhotoUploader
end
