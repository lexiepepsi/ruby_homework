class UpdateHotelNameToBeUnique < ActiveRecord::Migration
  def change
  	change_column :hotels, :name, :string, unique: true
  end
end
