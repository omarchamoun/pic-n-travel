class AddPhotoToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :photo, :string
  end
end
