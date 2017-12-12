class Profile < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :trips, dependent: :destroy
  has_many :saved_trips, dependent: :destroy


end
