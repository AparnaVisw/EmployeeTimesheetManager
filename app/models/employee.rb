class Employee < ApplicationRecord
	has_many :projects
	has_many :timesheets, through: :projects
end
