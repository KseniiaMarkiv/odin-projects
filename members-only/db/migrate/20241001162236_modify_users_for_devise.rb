class ModifyUsersForDevise < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :password, :string, limit: 20
  end
end
