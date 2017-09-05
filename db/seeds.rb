# Examples:
#
#   Character.create(name: 'Luke', movie: movies.first)

if Employee.find_by(empid: 100).nil?
  Employee.create(
    empid: 100,
    name: 'John Doe',
    dob: Date.today,
    address: 'ABC street, New york'
  )
end

if Employee.find_by(empid: 101).nil?
  Employee.create(
    empid: 101,
    name: 'Elsa Mary',
    dob: Date.today,
    address: 'XYZ street, New Jersey'
  )
end

if Employee.find_by(empid: 102).nil?
  Employee.create(
    empid: 102,
    name: 'MS Dhoni',
    dob: Date.today,
    address: 'FGI street, Russia'
  )
end

if Project.find_by(project_name: 'Project1').nil?
  Project.create(
    project_name: 'Project1',
    startdate: DateTime.new(2020, 6, 22),
    employee_id: 1
  )
end

if Project.find_by(project_name: 'Project2').nil?
  Project.create(
    project_name: 'Project2',
    startdate: DateTime.new(2020, 6, 23),
    employee_id: 2
  )
end
