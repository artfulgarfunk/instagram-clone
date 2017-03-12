class PostsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params_for_post)
      if @post.save
        flash[:success] = 'Your post has been uploaded! Congratulations!'
        redirect_to @post
      else
        flash[:alert] = 'Stop! You have to upload an image!'
        render :new
      end
    # creates a no show method error. the redirect_to calls a show method, evidently.
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params_for_post)
    redirect_to(params.require(:post).permit(:caption))
    flash[:success] = 'Your post has been updated!'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
    flash[:success] = 'Post deleted! No one needs to know'
  end

  private

  def params_for_post
    params.require(:post).permit(:caption, :image)
    # simply what parameters are permitted, in this case, the params are caption and image
  end

end
