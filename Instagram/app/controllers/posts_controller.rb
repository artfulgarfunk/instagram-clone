class PostsController < ApplicationController

  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params_for_post)
    redirect_to @post
    # creates a no show method error. the redirect_to calls a show method, evidently.
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def params_for_post
    params.require(:post).permit(:caption, :image)
  end

end
