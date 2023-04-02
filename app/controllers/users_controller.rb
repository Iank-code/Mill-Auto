class UsersController < ApplicationController
  before_action :authorize, only: [:show]
  #POST /signup
  def create
    user = User.create(user_params)
    if user.valid?
        # Save user id in the session's hash
        session[:user_id] = user.id
        render json: user, status: :created
    else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end
 # GET logged user /me
  def show
    user = User.find(session[:user_id])
    render json: user, status: :created
  end
 # PATCH/PUT /users/1
  def update
    user = User.find(session[:user_id])
    user.update!(user_params)
    render json: user, status: :created
  end
# reset user password when not logged in
  def reset_password
    user = User.find_by(email: params[:email])
    user.update!(password: params[:password])
    session[:user_id] = user.id
    render json: user, status: :created
  end
  private
  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end
  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end