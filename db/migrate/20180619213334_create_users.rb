class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :street_adress
      t.integer :zipcode

      t.timestamps
    end
  end
end
