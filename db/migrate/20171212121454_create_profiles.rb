class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.boolean :user_namecreator

      t.timestamps
    end
  end
end
