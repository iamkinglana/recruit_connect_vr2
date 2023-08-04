class AddAcceptedToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :accepted, :boolean
  end
end
