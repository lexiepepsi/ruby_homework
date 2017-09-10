class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
    	t.string(:name, unique: true)
    	t.string(:description)

      t.timestamps null: false
    end
  end
end
