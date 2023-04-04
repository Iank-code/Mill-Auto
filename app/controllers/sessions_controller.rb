class SessionsController < ApplicationController
    # before_action :authorize, only: [:destroy]
    #Login
    skip_before_action :authorize, only: :create

    def new
    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: { message: "Logged in succesfuly!" }, status: :ok
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
