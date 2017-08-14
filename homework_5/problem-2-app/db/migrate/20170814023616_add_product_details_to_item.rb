class AddProductDetailsToItem < ActiveRecord::Migration
  def change
    add_column :items, :product_details, :text
  end
end
