class CreateTimesheets < ActiveRecord::Migration[5.1]
  def change
    create_table :timesheets do |t|
      t.time :timespend
      t.date :date_worked
      t.text :description

      t.timestamps
    end
  end
end
