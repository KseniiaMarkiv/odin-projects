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
      redirect_to users_path, notice: 'User successfully created.'
    else
      render :new
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
      redirect_to users_path, notice: 'User successfully updated.'
    else
      render :edit
    end
  end


  protected

  def after_sign_up_path_for(resource)
    users_path # Redirect to the users index after signup
  end

  def after_update_path_for(resource)
    users_path # Redirect to the users index after updating
  end
end
