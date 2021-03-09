class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :experience, :integer
    add_column :users, :username, :string
    add_column :users, :personality, :text
    add_column :users, :date_birth, :date
    add_column :users, :is_captain, :boolean
  end
end
