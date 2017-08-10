class TimesheetsController < ApplicationController

  before_action :set_values, only: [:new]

def new
  debugger
  @timesheet = Timesheet.new
end

def create
  debugger
  @timesheets = Timesheet.new(timesheet_params)
  if @timesheets.save
    debugger
         redirect_to :action => 'show'
      else
        debugger
         render :action => 'new'
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
   @timesheet = Timesheet.find(params[:id])
      if @timesheet.update_attributes(timesheet_params)
         redirect_to :action => 'show', :id => @timesheet
      else
         render :action => 'edit'
      end
end


def timesheet_params
	params.require(:timesheet).permit(:timespend,:employee_id,:project_id,:dates)
end

def set_values
  @projects = Project.all
  $total_projects = Project.all.count
end


end
