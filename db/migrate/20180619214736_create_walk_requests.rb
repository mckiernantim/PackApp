class CreateWalkRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :walk_requests do |t|
      t.references :user, foreign_key: true
      t.references :dog, foreign_key: true
      t.date :date
      t.time :walk_start_time
      t.time :walk_completed_time
      t.integer :walker_id, null: false

      t.timestamps null: false
    end
      add_foreign_key :walk_requests, :users, column: :walker_id, primary_key: :id
  end
end
