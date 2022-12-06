class ProductsController < ApplicationController

    #Error messages
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActiveRecord::RecordInvalid, with: :render_422

    # GET /products
    def index 
        products = Product.all 
        render json: products, status: :ok
    end

    # GET /products/:id
    def show
        product = Product.find(params[:id])
        render json: product, status: :ok, serializer: ProductReviewSerializer, include: ['reviews', 'reviews.user', 'category']
    end

    # POST /products
    def create
        product = Product.create!(product_params)
        render json: product, status: :created
    end

    # PUT /products/:id
    def update
        product = Product.find(params[:id])
        product.update!(product_params)
        render json: product, status: :created
    end

    # DELETE /products/:id
    def destroy
        product = Product.find(params[:id])
        product.destroy
        head :no_content
    end

    # Private methods
    private 

    def product_params
        params.permit(:title, :description, :price, :image_url, :quantity)
    end

    def render_404
        render json: { error: "Product not found" }, status: :not_found
    end

    def render_422(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
