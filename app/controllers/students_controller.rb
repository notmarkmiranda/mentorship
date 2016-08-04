class StudentsController < ApplicationController
  def index
    @students = Student.where(active: true)
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @cohorts = Cohort.all
  end

  def create
    student = Student.new(student_params)
    if student.save
      flash[:success] = "You now have a student profile!"
      redirect_to dashboard_path
    end
  end

  def edit
    @student = User.find(params[:id]).student
  end

  def deactivate
    if User.find(params[:id]).deactivate_profile
      flash[:warning] = "Your profile was deactivated."
      redirect_to dashboard_path
    end
  end

  def activate
    if User.find(params[:id]).activate_profile
      flash[:success] = "Your profile was activated."
      redirect_to dashboard_path
    end
  end

  private
  def student_params
    params.require(:student).permit(:cohort_id, :user_id)
  end
end
