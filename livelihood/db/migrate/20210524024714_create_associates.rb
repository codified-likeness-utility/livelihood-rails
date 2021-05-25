class CreateAssociates < ActiveRecord::Migration[6.1]
  def change
    create_table :associates do |t|
      t.string :fullName
      t.string :firstName
      t.string :lastName
      t.string :company
      t.string :title
      t.string :profileUrl
      t.string :connectionDegree
      t.string :email
      t.boolean :linkedinPremium
      t.string :message1
      t.string :message2
      t.string :message3
      t.string :message4
      t.string :message5
      t.string :m2sent
      t.string :m3sent
      t.string :m4sent
      t.string :m5sent
      t.string :lastMessageSent
      t.integer :linkedin_network_id
      t.timestamps
    end
  end
end
