class Hotel < ActiveRecord::Base
	belongs_to(:user)

	validates_presence_of(:name, :description, :user_id, :address)
	validates_uniqueness_of(:name)


	def admin_or_belongs_to?(person, place)
		person.try(:admin?) || person.hotels.ids.include?(place)
	end

	def admin_check(person)
		person.try(:admin?)
	end

	has_attached_file(:image,
  						styles: {thumbnail: '100x100>',
  								  full: '300X300>'})
  	validates_attachment_content_type(:image, content_type: /\Aimage\/.*\z/)

end
