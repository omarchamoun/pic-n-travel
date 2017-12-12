class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.boolean :creator
      t.string :user_namecreator
      t.timestamps
    end
  end
end
