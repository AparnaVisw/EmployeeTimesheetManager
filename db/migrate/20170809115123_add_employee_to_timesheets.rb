class AddEmployeeToTimesheets < ActiveRecord::Migration[5.1]
  def change
    add_column :timesheets, :employee_id, :integer
  end
end
