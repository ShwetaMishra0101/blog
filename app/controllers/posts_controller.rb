class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
   

    # if @post.save
        @post = Post.new(post_params)
      redirect_to @post, notice: 'Post was successfully created.'
    # else
    #   render :new
    # end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
