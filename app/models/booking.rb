class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :profile
end
