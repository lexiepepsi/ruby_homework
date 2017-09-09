class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	  devise :database_authenticatable, :registerable,
	         :recoverable, :rememberable, :trackable, :validatable
  

	# validates_presence_of(:name, message: 'must be entered')
	# validates_presence_of(:profile, message: 'must be entered')
	# validates_presence_of(:headline, message: 'must be entered')
	validates_presence_of(:email, message: 'must be entered')
	validates_presence_of(:password, message: 'must be entered')
end
