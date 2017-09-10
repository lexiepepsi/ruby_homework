class Hotel < ActiveRecord::Base
	belongs_to(:user)

	validates_presence_of(:name, :description, :user_id)

	def admin_or_belongs_to?(person, place)
		person.try(:admin?) || person.hotels.ids.include?(place)
	end

end
