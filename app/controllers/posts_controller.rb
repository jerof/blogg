class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "Successfully created post"
    else
      render 'new'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
