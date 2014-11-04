class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
      # Post was created successfully\
    if @post
      @post = Post.create(post_params)
    else
      # Something Bad happened!
    end
    #render :text => params.inspect
    @post = Post.create(post_params)
  end

  def show
    @post = Post.find(params[:id])
  end


  private
  def post_params
    params.require(:post).permit(:title, :author, :content, :published_at)
  end


end
