class AllowNullForWalks < ActiveRecord::Migration[5.2]
  def change
    change_column_null :walk_requests, :walker_id, true
  end
end
