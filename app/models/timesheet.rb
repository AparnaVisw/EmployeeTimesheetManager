# for timesheet model
class Timesheet < ApplicationRecord
  belongs_to :employee
  belongs_to :project

  validates_presence_of :timespend, :description
  # validates :timespend,:description, :presence => true


  scope :get_total_hours_on_a_date, ->(emp_id, date) { where('employee_id = ? and date_worked = ?', emp_id, date).sum('timespend') }
  scope :get_total_hours_in_last_5_days, ->(proj_id, emp_id) { where('employee_id= ? and project_id= ? and date_worked<= ? and date_worked >= ?', emp_id, proj_id, Date.today.to_date, 4.day.ago.to_date).sum('timespend') }
  scope :get_hours_in_proj_per_day, ->(emp_id, proj_id, date) { where('employee_id= ? and project_id= ? and date_worked= ?', emp_id, proj_id, date).sum('timespend') }
end
