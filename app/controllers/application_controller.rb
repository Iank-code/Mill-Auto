class ApplicationController < ActionController::API
<<<<<<< HEAD
include ActionController::Cookies

rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

before_action :authorize

private

def authorize
  @current_user = User.find_by(id: session[:user_id])

  render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
end

def render_unprocessable_entity_response(exception)
  render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
end
=======
    include ActionController::Cookies
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
end
