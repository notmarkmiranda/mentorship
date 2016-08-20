class UsersController < ApplicationController
  before_action :require_user, except: [:new]
  before_action :redirect_user, only: [:new]

  def new
  end

  def show
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
    @cohorts = Cohort.all
  end

  def update
    @user = User.find(params[:id])
    user = params[:user]
    if @user.update(email: user[:email], bio: user[:bio], slack_name: user[:slack_name])
      flash[:success] = "Your profile has been updated!"
      redirect_to dashboard_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :bio, :slack_name, :name)
  end

end
