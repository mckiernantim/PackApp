class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :weight
      t.date :date_of_birth
      t.string :breed
      t.string :temperment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
