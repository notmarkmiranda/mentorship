class StudentsController < ApplicationController
  def index
    @students = Student.all
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

  private
  def student_params
    params.require(:student).permit(:cohort_id, :user_id)
  end
end
