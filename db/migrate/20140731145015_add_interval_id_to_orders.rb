class AddIntervalIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders , :interval_id, :integer
  end
end
