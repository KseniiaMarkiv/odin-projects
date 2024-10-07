class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :html, :turbo_stream

  # GET /users/sign_up
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      # Automatically sign in the user after successful sign-up
      sign_in(@user)
      respond_to do |format|
        format.html { redirect_to users_path, notice: 'User successfully created.' }
        format.turbo_stream
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.turbo_stream
      end
    end
  end

  # GET /resource/edit
  def edit
    @user = current_user
  end

  # PUT /resource
  def update
    @user = current_user
    if @user.update(user_params)
      respond_to do |format|
        format.html { redirect_to users_path, notice: 'User successfully updated.' }
        format.turbo_stream
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.turbo_stream
      end
    end
  end


  protected

  def after_sign_up_path_for(resource)
    users_path # Redirect to the users index after signup
  end

  def after_update_path_for(resource)
    users_path # Redirect to the users index after updating
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path # Redirect to login page after logout
  end

  private
  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
