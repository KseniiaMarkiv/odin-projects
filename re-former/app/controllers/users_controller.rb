class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)

    @user.save ? redirect_to @user : render :new, status: :unprocessable_entity
  end

  private

  def user_params
     params.require(:article).permit(:username, :email, :password)
   end
end
