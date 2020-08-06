class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users/1
  def show
    @user = User.find(params[:id])
    render json: @user.to_json(include: [:concepts, :interviews])
  end


  # POST /users
  def create
    user = User.create!(
        username: params['user']['username'],
        name: params['user']['name'],
        email: params['user']['email'],
        password: params['user']['password'],
        password_confirmation: params['user']['password_confirmation'],
        study_availability: params['user']['study_availability']
    )

    if user
        session[:user_id] = user.id 
        render json: {
            status: :created,
            user: user
        }
    else 
        render json: { status: 500 }
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :name, :email, :password, :study_availability, :isLoggedIn)
    end

end
