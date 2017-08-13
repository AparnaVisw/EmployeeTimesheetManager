class TimesheetsController < ApplicationController
  before_action :set_values, only: [:new]

def new
  @user = Employee.find(params[:id])
  @projects = Project.all
  @timesheet = Timesheet.new
   respond_to do |format|
    format.html
   end
end

def create
  @timesheets = Timesheet.new(timesheet_params)
  if @timesheets.save
    render :action => 'index'
     else
    render :action => 'new'
  end
end

def index
  @timesheets = Timesheet.where(employee_id: "#{params[:timesheet][:employee_id]}")
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
  @timesheet_count = @timesheet.count
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
	params.require(:timesheet).permit(:timespend,:project_id,:date_worked,:employee_id,:description)
end

def set_values
  @projects = Project.all
  # @dates = [ 4.day.ago.to_date,3.day.ago.to_date,2.day.ago.to_date,1.day.ago.to_date,Date.today.to_date]
  # $total_projects = Project.all.count
end


end
