class CreateSavedTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_trips do |t|

      t.timestamps
    end
  end
end
