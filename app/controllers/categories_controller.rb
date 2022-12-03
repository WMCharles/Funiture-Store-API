class CategoriesController < ApplicationController

    #Error messages
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActiveRecord::RecordInvalid, with: :render_422

    # GET /categories
    def index 
        categories = Category.all
        render json: categories, status: :ok
    end

    # GET /categories/:id
    def show
        category = Category.find(params[:id])
        render json: category, status: :ok, serializer: CategoryShowSerializer
    end

    # POST /categories
    def create
        category = Category.create!(category_params)
        render json: category, status: :created
    end

    # PATCH /categories/:id
    def update
        category = Category.find(params[:id])
        category.update!(category_params)
        render json: category, status: :created
    end

    # DELETE /categories/:id
    def destroy
        category = Category.find(params[:id])
        category.destroy
        head :no_content
    end

    # Private methods
    private 

    def category_params
        params.permit(:name, :description)
    end

    def render_404
        render json: { error: "Category not found" }, status: :not_found
    end

    def render_422(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
