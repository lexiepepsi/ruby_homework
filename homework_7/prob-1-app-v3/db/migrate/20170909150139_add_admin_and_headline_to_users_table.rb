class AddAdminAndHeadlineToUsersTable < ActiveRecord::Migration
  def change
  	add_column(:users, :admin, :boolean, default: false)
  	add_column(:users, :headline, :string)
  end
end
