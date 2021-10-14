class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :user_status, :string
    add_column :users, :user_address, :text
    add_column :users, :user_photo, :text
  end
end
