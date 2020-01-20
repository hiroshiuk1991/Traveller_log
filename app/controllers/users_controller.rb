class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        
        if user.valid? 
            render json: user
        else
            render json: {errors: user.errors.full_messages}, status: :unauthorized
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :email)
    end
end
