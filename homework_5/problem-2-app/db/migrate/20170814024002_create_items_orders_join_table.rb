class CreateItemsOrdersJoinTable < ActiveRecord::Migration
  def change
  	create_join_table :items, :orders do |t|
  		t.index [:item_id, :order_id]
  		t.index [:order_id, :item_id], unique: true
  	end
  end
end
