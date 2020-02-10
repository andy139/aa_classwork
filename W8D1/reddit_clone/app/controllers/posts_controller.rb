class PostsController < ApplicationController
  before_action :required_login, only: [:new, :create]
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_url(@post)
    else
      flash.now[:errors] = @post.errors.full_messages
      render :new       
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def show
    @post = Post.find_by(id: params[:id])

  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post && @post.update_attributes(post_params)
      redirect_to post_url(@post)
    else     
      flash.now[:errors] = @post.errors.full_messages
      render :edit
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to subs_url
  end

  def post_params
    params.require(:post).permit(:title, :url, :content,  :author_id, sub_ids: [])
  end

end
