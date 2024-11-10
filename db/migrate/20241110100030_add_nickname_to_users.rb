class AddNicknameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :profile, :text
    add_column :users, :department, :string
    add_column :users, :position, :string
  end
end
