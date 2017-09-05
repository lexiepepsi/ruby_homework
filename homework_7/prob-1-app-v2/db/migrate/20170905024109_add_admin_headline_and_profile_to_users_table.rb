class AddAdminHeadlineAndProfileToUsersTable < ActiveRecord::Migration
  def change
  	  	add_column(:users, :admin, :boolean, default: false)
  	  	add_column(:users, :headline, :string)
  	  	add_column(:users, :profile, :text)
  end
end
