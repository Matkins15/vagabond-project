class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @city = City.find(params[:city_id])
  end

  def create
    Post.create(post_params)
  end

  private
    def post_params
      params.require(:post).permit(:title)
    end

end