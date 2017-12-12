class AddForeignKeyToProfilesAndTrips < ActiveRecord::Migration[5.1]
  def change

    # This adds the actual field for the id to the database table 'trips'
    add_column :trips, :profile_id, :integer
    # This creates the connection in the database between the trips table and the profiles table
    add_foreign_key :trips, :profiles

    add_column :profiles, :user_id, :integer
    add_foreign_key :profiles, :users
  end
end
