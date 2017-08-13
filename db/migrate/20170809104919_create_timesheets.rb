class CreateTimesheets < ActiveRecord::Migration[5.1]
  def change
    create_table :timesheets do |t|
      t.float :timespend
      t.date :date_worked
      t.text :description
      t.integer :employee_id
      t.integer :project_id
      t.timestamps
    end
  end
end
