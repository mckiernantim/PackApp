class AddNamesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address_line_one, :string
    add_column :users, :postal_code, :string
  end
end
