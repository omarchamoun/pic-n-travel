class AddPhotoToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :photo, :string
  end
end
