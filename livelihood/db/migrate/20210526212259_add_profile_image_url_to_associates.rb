class AddProfileImageUrlToAssociates < ActiveRecord::Migration[6.1]
  def change
    add_column :associates, :profileImageUrl, :string
  end
end
