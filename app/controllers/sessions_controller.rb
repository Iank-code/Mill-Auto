class SessionsController < ApplicationController
<<<<<<< HEAD
    # before_action :authorize, only: [:destroy]
    #Login
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
=======

    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user 
    end

    def destroy
        session.delete :user_id
        head :no_content
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
    end
end
