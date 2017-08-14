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
    redirect_to  action: 'index', id: params[:timesheet][:employee_id],project_id:  params[:timesheet][:project_id]
     else
    render :action => 'new'
  end
end

def index
  @all_projects = Project.all.pluck(:id,:project_name)
  @employee = Employee.where(id: "#{params[:id]}").pluck(:name)[0]
  @timesheets = Timesheet.where(employee_id: "#{params[:id]}")
  @total_hours_worked_today = Timesheet.get_total_hours_on_a_date(params[:id],Date.today)
  @total_hours_worked_yest = Timesheet.get_total_hours_on_a_date(params[:id],Date.yesterday)
  @total_hours_worked_dayb4yest = Timesheet.get_total_hours_on_a_date(params[:id],2.day.ago)
  @total_hours_worked_3dayb4 = Timesheet.get_total_hours_on_a_date(params[:id],3.day.ago)
  @total_hours_worked_4dayb4 = Timesheet.get_total_hours_on_a_date(params[:id],4.day.ago)
  @total_hours_in_last_5_days_project = Timesheet.get_total_hours_in_last_5_days(params[:project_id],params[:id])
  @all_projects.each do |proj|
  @total_hours_in_last_5_days_4project_not_chosen = Timesheet.get_total_hours_in_last_5_days(proj[0],params[:id]) if params[:project_id].to_i != proj[0]
  end
  @total_perc_in_last_5_days_project = (@total_hours_in_last_5_days_project/40) *100
  @total_perc_in_last_5_days_4project_not_chosen = (@total_hours_in_last_5_days_4project_not_chosen/40)*100
  @hours_per_day_per_project = Timesheet.get_hours_in_proj_per_day(params[:emp_id],params[:project_id],Date.today)

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
end


end
