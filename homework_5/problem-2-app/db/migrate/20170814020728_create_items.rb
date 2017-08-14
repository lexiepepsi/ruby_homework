class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.integer(:item_number, :price, :inventory_id)
    	t.string(:name, :category, :size, :color)
    	t.boolean(:for_sale)
     	t.timestamps null: false
    end
  end
end
