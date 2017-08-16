# class for employee model
class Employee < ApplicationRecord
  has_many :projects
  has_many :timesheets, through: :projects

  dragonfly_accessor :image do
    copy_to(:image_thumb) { |a| a.thumb('500x500#') }
  end

  dragonfly_accessor :image_thumb

  scope :get_employee_record, -> (id) { where('id= ?',id) }
end
