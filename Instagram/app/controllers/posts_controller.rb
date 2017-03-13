class PostsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  before_action :own_post, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(params_for_post)
      if @post.save
        flash[:success] = 'Your post has been uploaded! Congratulations!'
        redirect_to posts_path
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

  def own_post
    @post = Post.find(params[:id])
    unless current_user == @post.user
      flash[:alert] = "Go away, this is not your post"
      redirect_to root_path
    end
  end

  def params_for_post
    params.require(:post).permit(:caption, :image)
    # simply what parameters are permitted, in this case, the params are caption and image
  end

end
