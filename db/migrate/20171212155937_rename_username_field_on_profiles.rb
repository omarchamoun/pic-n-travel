class RenameUsernameFieldOnProfiles < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :user_namecreator, :user_name
     change_column :profiles, :user_name, :string
  end
end
