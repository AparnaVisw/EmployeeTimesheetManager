require 'rails_helper'

RSpec.describe Timesheet, type: :model do
  it 'is not valid with out a valid timespend' do
    timesheet = Timesheet.new(timespend: nil)
    expect(timesheet).to_not be_valid
  end

  it 'is not valid with out a valid description' do
    timesheet = Timesheet.new(description: nil)
    expect(timesheet).to_not be_valid
  end

  it 'is not valid with out a valid project_id' do
    timesheet = Timesheet.new(project_id: nil)
    expect(timesheet).to_not be_valid
  end
end
