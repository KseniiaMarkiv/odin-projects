class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @posts = Post.all
    respond_with(@posts)
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
    redirect_to posts_path, alert: 'You are not authorized to edit this post.' unless @post.user == current_user
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      # flash[:notice] = 'Post was successfully created.'
      respond_with(@post)
    else
      render :new
    end
  end

  def update
    # @post.update(post_params)
    # respond_with(@post)
    if @post.user == current_user
      @post.update(post_params)
      respond_with(@post)
    else
      redirect_to posts_path, alert: 'You are not authorized to update this post.'
    end
  end

  def destroy
    # @post.destroy!
    # respond_with(@post)
    if @post.user == current_user
      @post.destroy!
      respond_with(@post)
    else
      redirect_to posts_path, alert: 'You are not authorized to delete this post.'
    end
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end
end
