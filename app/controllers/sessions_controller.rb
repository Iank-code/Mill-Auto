class SessionsController < ApplicationController
    # before_action :authorize, only: [:create, :destroy]
    before_action :create
    skip_before_action :authorize
    #Login
#     "email": "joseph@gmail.com",
#   "password_confirmation": "joseph123"
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user 
        else
            render json: { error: "Invalid username or password" }, status: :unauthorized
        end
       
    end

    #Delete
    def destroy 
        if session.present?
          session.delete :user_id
          head :no_content
        else 
            render json: { error: "Unauthorized" }, status: :unauthorized
        end
    end
end
