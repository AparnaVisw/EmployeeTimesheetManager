# table structure for project details
class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.date :startdate
      t.integer :employee_id
      t.timestamps
    end
  end
end
