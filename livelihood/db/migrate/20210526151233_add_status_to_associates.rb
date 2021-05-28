class AddStatusToAssociates < ActiveRecord::Migration[6.1]
  def change
    add_column :associates, :status, :string
  end
end
