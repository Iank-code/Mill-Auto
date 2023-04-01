class OrdersController < ApplicationController
  before_action :authorize
  rescue_from ActiveRecord::RecordInvalid, with: :render_validation_errors
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  before_action :set_order, only: %i[ show update destroy ]

  # GET /orders
  def index
    @orders = current_user.orders
    render json: @orders, status: :ok
  end

  # GET /orders/1
  def show
    if @order.user != current_user
      render json: { message: 'Order not found' }, status: 404
    else
      render json: @order, status: :ok
    end
  end

  # POST /orders
  def create
    @order = current_user.orders.create!(order_params)
    render json: @order, status: :created, location: @order
  end

  # PATCH/PUT /orders/1
  def update
    if @order.user != current_user
      render json: { message: 'Order not found' }, status: 404
    else
      @order.update!(order_params)
      render json: @order, status: :created, location: @order
    end
  end

  # DELETE /orders/1
  def destroy
    if @order.user != current_user
      render json: { message: 'Order not found' }, status: 404
    else
      @order.destroy
      head :no_content
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.permit(:quality, :total_price, :status, :user_id, :car_id)
    end

    # render error for not found
    def not_found
      render json: { message: 'Order not found'}, status: 404
    end

    # render error for invalid parameters / unprocessable entities
    def render_validation_errors(invalid)
      render json: { error: invalid.record.errors.full_messages }, status: 422
    end
end
