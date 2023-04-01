class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    before_action :authorize, only: [:create, :update, :destroy]

   # GET /reviews
   def index
    reviews = Review.all
    render json: reviews
  end

  # GET /reviews/1
  def show
    review = Review.find(params[:id])
    render json: review
  end

  # POST /reviews
  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PUT /reviews/1
  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    head :no_content
  end

  private

    def review_params
      params.permit(:comment, :car_id, :user_id)
    end

    def render_not_found_response
      render json: { error: "Review not found" }, status: :not_found
     end
  end