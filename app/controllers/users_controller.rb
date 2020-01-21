class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        
        if user.valid? 
            render json: user
        else
            render json: {errors: user.errors.full_messages}, status: :unauthorized
        end
    end

    def login
        user = User.find_by(email: user_params[:email])

        if user && user.authenticate(user_params[:password])
            render json: user
        else
            render json: {errors: ["Whoopsie, something's gong wrong"]}, status: :unauthorized
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :email)
    end
end
