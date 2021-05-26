class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :jobTitle
      t.string :companyName
      t.string :description
      t.string :jobPostUrl
      t.string :salary

      t.timestamps
    end
  end
end
