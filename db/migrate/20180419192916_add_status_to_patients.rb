class AddStatusToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :status, :boolean
  end
end
