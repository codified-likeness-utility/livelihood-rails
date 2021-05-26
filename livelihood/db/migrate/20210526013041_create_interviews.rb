class CreateInterviews < ActiveRecord::Migration[6.1]
  def change
    create_table :interviews do |t|
      t.string :interviewDescription
      t.string :interviewDate
      t.string :interviewTime
      t.integer :user_id
      t.integer :application_id
      t.timestamps
    end
  end
end

# interviews will be created after a job and application have been created.