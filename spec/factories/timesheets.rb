FactoryGirl.define do
  factory :timesheet do
    timespend 1.5
    date_worked '2017-08-16'
    description 'MyText'
  end

  factory :invalid_timesheet, parent: :timesheet do |f|
    f.description nil
  end
end
