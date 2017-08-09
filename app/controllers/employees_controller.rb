class EmployeesController < ApplicationController

  def index
    @users= Employee.all
    respond_to do |format|
      format.html
    end
  end

  def show
    @employee = Employee.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def edit
    @user = Employee.find(params[:id])
    respond_to do |format|
      format.html
    end
   end

   def update
    @user = Employee.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to :action => 'show', :id => @user
   else
      render :action => 'edit'
   end
   end

  def user_params
      params.require(:user).permit(:name, :empid, :dob, :address)
  end

end
