class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.integer :price_experience
      t.string :date
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
