class DiariesController < ApplicationController

    before_action :authorized_action

    def create 
        diary = Diary.create(diary_params)
        diary.update(user: @current_user )
        if diary.valid? 
            render json: diary
        else
            render json: {errors: diary.errors.full_messages}, status: :forbidden
        end
    end 

    def index
        diaries = Diary.all 
        render json: diaries
    end

    private

    def diary_params
        params.require(:diary).permit( :description)
    end

    def authorized_action
        if !logged_in?
            render json: {erros:'You must be a registered user.'}, status: :unauthorized 
        end
    end


end
