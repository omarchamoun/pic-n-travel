class Trip < ApplicationRecord
  belongs_to :profile
  has_many :bookings
end
