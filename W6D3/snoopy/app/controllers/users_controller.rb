require "byebug"

class UsersController < ApplicationController
  

  def index  
    render json: User.all 
  end

  def create
    # render json: params
    user = User.new(params.require(:user).permit(:name, :email))
    if user.save!
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end


  end

  def show
    render json: params
  end



end
