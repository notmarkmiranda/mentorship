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
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :bio, :slack_name, :name)
  end

end
