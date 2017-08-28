class Order < ActiveRecord::Base
	belongs_to(:user)
	has_and_belongs_to_many(:items)
	validates(:user_id,
				presence: true)
	validates(:item_ids,
				presence: true)

end
