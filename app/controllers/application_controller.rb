class ApplicationController < ActionController::API
include ActionController::Cookies
 before_action :log_referrer_policy

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  before_action :authorize
  
  private
  def log_referrer_policy
    Rails.logger.info("Referrer-Policy before: #{response.headers['Referrer-Policy']}")
    response.headers['Referrer-Policy'] = '*'
    Rails.logger.info("Referrer-Policy after: #{response.headers['Referrer-Policy']}")
  end

def authorize
  @current_user = User.find_by(id: session[:user_id])

  render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
end

def render_unprocessable_entity_response(exception)
  render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
end
end
