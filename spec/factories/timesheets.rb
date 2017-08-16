FactoryGirl.define do
  factory :timesheet do
    timespend 1.5
    date_worked "2017-08-16"
    description "MyText"
    employee_id 1
    project_id 1
  end
end
