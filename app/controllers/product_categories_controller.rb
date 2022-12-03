class ProductCategoriesController < ApplicationController

    #Error messages
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActiveRecord::RecordInvalid, with: :render_422

    # GET /product_categories
    def index 
        product_categories = ProductCategory.all 
        render json: product_categories, status: :ok
    end

    # GET /product_categories/:id
    def show
        product_category = ProductCategory.find(params[:id])
        render json: product_category, status: :ok
    end

    # POST /product_categories
    def create
        product_category = ProductCategory.create!(product_categories_params)
        render json: product_category, status: :created
    end

    # PATCH/PUT /product_categories/:id
    def update
        product_category = ProductCategory.find(params[:id])
        product_category.update!(product_categories_params)
        render json: product_category, status: :created
    end

    # DELETE /product_categories/:id
    def destroy
        product_category = ProductCategory.find(params[:id])
        product_category.destroy
        head :no_content
    end

    # Private methods
    private 

    def product_categories_params
        params.permit(:product_id, :category_id)
    end
 
    def render_404
        render json: { error: "Category not found" }, status: :not_found
    end
 
    def render_422(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
