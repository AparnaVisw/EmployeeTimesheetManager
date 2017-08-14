# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Employee.find_by(:empid => 100).nil?
   Employee.create(empid: 100, name: "John Doe", dob: DateTime.new(1990, 6, 22),address: "ABC street,New york")
end

if Employee.find_by(:empid => 101).nil?
   Employee.create(empid: 101, name: "Elsa Mary", dob: DateTime.new(1991, 9, 9),address: "XYZ street,New Jersey")
end

if Employee.find_by(:empid => 102).nil?
   Employee.create(empid: 102, name: "MS Dhoni", dob: DateTime.new(1992, 7, 25),address: "FGI street,Russia")
end

if Project.find_by(:project_name => "Project1").nil?
   Project.create(project_name: "Project1", startdate: DateTime.new(2020, 6, 22), employee_id: 1)
end

if Project.find_by(:project_name => "Project2").nil?
   Project.create(project_name: "Project2", startdate: DateTime.new(2020, 6, 23), employee_id: 2)
end
