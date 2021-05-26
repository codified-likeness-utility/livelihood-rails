class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.string :status        #=> applied, interviewing, second interview, final interview, etc.
      t.string :dateApplied
      t.integer :user_id
      t.integer :job_id #=> use output of job creation POST request to supply date for application creation
      t.timestamps
    end
  end
end
