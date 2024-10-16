class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if params[:user_id]  # Check if the request is for a specific user's posts
      @user = User.find(params[:user_id])
      @posts = @user.posts  # Fetch posts for that user
    else
      @posts = Post.all  # Fetch all posts if no user is specified
      respond_with(@posts)
    end
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
    redirect_to posts_path, alert: "You can't edit this post, you didn't create it." unless @post.user == current_user
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.user == current_user
      @post.update(post_params)
      respond_with(@post)
    else
      redirect_to posts_path, alert: "You can't update this post, you didn't create it."
    end
  end

  def destroy
    if @post.user == current_user
      @post.destroy!
      respond_with(@post)
    else
      redirect_to posts_path, alert: "You can't delete this post, you didn't create it."
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
