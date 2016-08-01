class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
  end

  def show
    @mentor = Mentor.find(params[:id])
  end

  def new
    @mentor = Mentor.new
    @timezones = MentorTimezone.all
  end

  def create
    @mentor = Mentor.new(mentor_params)
    @mentor.user_id = current_user.id
    if @mentor.save
      redirect_to mentors_path
    end
  end

  private

  def mentor_params
    params.require(:mentor).permit(:location, :mentor_timezone_id)
  end
end
