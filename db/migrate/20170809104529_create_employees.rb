# table structure for employee details
class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :empid
      t.date :dob
      t.text :address
    end
  end
end
