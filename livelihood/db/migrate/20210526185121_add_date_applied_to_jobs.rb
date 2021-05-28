class AddDateAppliedToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :dateApplied, :string
  end
end
