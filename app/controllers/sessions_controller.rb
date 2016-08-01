class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_auth(request.env['omniauth.auth'])
    if @user
      session[:user_id] = @user.id
      if !@user.email
        redirect_to edit_user_path(@user)
      else
        redirect_to dashboard_path
      end
    else
      redirect_to root_path
    end
  end
end
