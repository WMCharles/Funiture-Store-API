class UsersController < ApplicationController

    # GET /users
    def index
        users = User.all
        render json: users, status: :ok
    end

    # POST /users
    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    # Staying in a session
    def show
        user = User.find_by(id: session[:user_id])
        if user 
          render json: user
        else
          render json: {error: "Not authorized"}, status: :unauthorized
        end
    end

    # Private methods
    private

    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
end
