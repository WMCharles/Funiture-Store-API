class ReviewsController < ApplicationController

    # Error Handling
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActiveRecord::RecordInvalid, with: :render_422
    
    # GET /reviews
    def index
        reviews = Review.all 
        render json: reviews, status: :ok
    end

    # POST /reviews 
    def create 
        review = Review.create!(review_params)
        render json: review, status: :created
    end

    # DELETE /reviews/:id
    def destroy
        review = Review.find(params[:id])
        review.destroy
        head :no_content
    end

    # Private methods 
    private 

    def review_params 
        params.permit(:rating, :comment, :product_id, :user_id)
    end

    def render_404 
        render json: {error: "Review not found"}, status: :not_found
    end

    def render_422(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
