class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.integer :guests

      t.timestamps
    end
  end
end
