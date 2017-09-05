require 'rails_helper'

RSpec.describe TimesheetsController, type: :controller do
  let!(:employee) { FactoryGirl.create(:employee) }
  let!(:project) { FactoryGirl.create(:project, employee_id: employee.id) }
  let(:timesheet) do
    { timesheet: {
        "timespend": 1.5,
        "date_worked": "2017-08-16",
        "description": "MyText",
        "employee_id": employee.id,
        "project_id": project.id,
      }
    }
  end

  describe 'POST #create' do
    context 'create new timesheet' do
      it 'saves new timesheets' do
          before_count = Timesheet.count
          post :create, params: timesheet
          expect(Timesheet.count).not_to eq(before_count)
      end

      it 'saves no timesheets with nil value for fields' do
          before_count = Timesheet.count
          post :create, params: { timesheet: { timespend:nil, description: nil, employee_id: nil, project_id: nil, date_worked: nil } }
          expect(Timesheet.count).to eq(before_count)
      end
    end
  end

  describe 'POST #update' do
    context 'update record' do
      it 'updates existing timesheets' do
        timesheet1 = FactoryGirl.create(:timesheet, employee_id: employee.id, project_id: project.id)
        put :update, params: { id: timesheet1.id, timesheet: { description: "New Text", employee_id: employee.id, project_id: project.id } }
        expect(Timesheet.where(id: timesheet1.id).first.description).to eq("New Text")
      end
    end
  end

  describe 'GET #index' do
    context 'view a specifiic users records of timesheets' do
      it 'shows existing timesheets' do
      end
    end
  end
end

