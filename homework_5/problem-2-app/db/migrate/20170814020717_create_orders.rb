class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.integer(:item_qty)
      t.belongs_to(:user)
    	# t.string(:order_status)
    	# t.integer(:item_id, :line_item_qty, :tracking_number, :user_id)
    	# t.datetime(:shipped_at)
      	t.timestamps null: false
    end
  end
end
