class CatsController < ApplicationController


  def index
    @cats = Cat.all
    render :index

  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
  end
  
  def edit
  end

  def update
  end

  def destroy
  end


  # def cats_params

  # end
end
