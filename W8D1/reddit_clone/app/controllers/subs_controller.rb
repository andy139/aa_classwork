class SubsController < ApplicationController

  before_action :required_login, only: [:new, :create]
  before_action :required_moderator_login, only: [:edit, :update]

  
  def create
    @sub = Sub.new(sub_params)
    if @sub.save
      redirect_to sub_url(@sub)
    else
      flash[:errors] = @sub.errors.full_messages
      render :new

    end

  end

  def new
    @sub = Sub.new

  end

  def edit
    @sub = Sub.find_by(id: params[:id])


  end

  def update
    @sub = Sub.find_by(id: params[:id])
    if @sub.update_attributes(sub_params)
      redirect_to sub_url(@sub)
    else
      flash[:errors] = @sub.errors.full_messages
      render :edit
    end

    
  end

  def destroy
  end

  def index
    @subs = Sub.all
  end

  def show
    @sub = Sub.find_by(id: params[:id])

  end

  def sub_params
    params.require(:sub).permit(:title, :description, :moderator_id)

  end
end
