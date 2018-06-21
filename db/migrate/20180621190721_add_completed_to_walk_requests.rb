class AddCompletedToWalkRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :walk_requests, :completed, :integer
  end
end
