class TimesheetsController < ApplicationController

def new
   Timesheet.new
end

def create
  @timesheets = Timesheet.save(timesheet_params)
  if @timesheets.save
    redirect_to @timesheets
  else
    render "new"
  end
end

def index
  @timesheets = Timesheet.all
  respond_to do |format|
    format.html
  end
end

def show
	@timesheet = Timesheet.where(:employee_id => params[:id])
	respond_to do |format|
		format.html
	end
end

def edit
	@timesheet = Timesheet.where(:employee_id => params[:id])
	respond_to do |format|
		format.html
	end
end

def update
end

def delete
end

def timesheet_params
	params.require(:timesheet).permit(:timespend,:employee_id,:project_id,:dates)
end

end
