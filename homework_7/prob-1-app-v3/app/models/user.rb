class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    validates_presence_of(:name, :headline, :profile)

	def admin_or_belongs_to?(person)
		person.try(:admin?) || self.id == person.id
	end

end
