class AddUserIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :user_id, :integer
  end
end
