class SessionsController < ApplicationController
  def create
    user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if user 
      login(user)
      redirect_to users_url
    else
      flash[:errors] = ["Wrong username or password"]
      redirect_to new_session_url
    end

  end

  def new
    @user = User.new
  end

  def destroy
    logout
  end
end
