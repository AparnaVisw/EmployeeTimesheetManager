class AddEmployeeToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :employee_id, :integer
  end
end
