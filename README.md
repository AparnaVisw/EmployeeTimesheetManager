# README

## ETM-1st Version

ETM is an application that is intended to handle timesheet of employees in an organization. Any user entering this application will be able to view a list of all the employees along with a button to create new timesheets. When a user clicks on the button to create new timesheet, he will be able to view a new timesheet form, wherein he can enter all the timesheet details and save them. Once saved he will be redirected to view all the timesheets created by him along with the details of his working hours for the past 5 days. He can click on the time in this page in case he wishes to edit the same but he cannot enter more than 8 hours for a day. Clicking on the time will redirect to edit page and the time and description for a previous timesheet can be altered and will be updated. Once updated, the user will again be redirected to the page displaying all his timesheets and also a list of total hours worked by the employee in all the projects as well as total hours in each project. Along with it, the percentage of utilization of the employee for the past 5 days can be seen in the table. Any user can view the list of all the employees and edit their profile. Any one can add a timesheet by chosing employee such that total time does not exceed 8 for a particular day. I have populated employee data as well as project data in to the application via seed. No authorization or authentication has been set up.

## Limitations:

Without creating a new timesheet,employees were not allowed to their existing timesheets. 
Page displaying all timesheets and utilization details was difficult to understand for a new user
Code was left without refactoring.
Didnot follow Rails-best-practices/style guide.
Lack of tests using rspec. 
Travis not integrated. 

## Requirements

Ruby [ruby 2.3.1p112]

Mysql [mysql Ver 14.14]

Rails [5.1.3]

## SetUp

git clone https://github.com/AparnaVisw/EmployeeTimesheetManager.git

cd EmployeeTimesheetManager

bundle install

## Setting up local development database

rails db:create

rails db:migrate

rails db:seed

## Running the development server

rails s




