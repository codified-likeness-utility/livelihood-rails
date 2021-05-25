class CreateLinkedinNetworks < ActiveRecord::Migration[6.1]
  def change
    create_table :linkedin_networks do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end
