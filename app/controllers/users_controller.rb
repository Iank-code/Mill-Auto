class UsersController < ApplicationController
  before_action :authorize, only: [:show]
<<<<<<< HEAD

=======
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
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
<<<<<<< HEAD
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
=======
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
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
    user = User.find_by(email: params[:email])
    user.update!(password: params[:password])
    session[:user_id] = user.id
    render json: user, status: :created
  end
<<<<<<< HEAD

private

def user_params
    params.permit(:username, :email, :password, :password_confirmation)
end

def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
end
end
=======
  private
  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end
  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
