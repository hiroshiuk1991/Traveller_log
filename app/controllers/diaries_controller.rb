class DiariesController < ApplicationController

    def create 
        diary = Diary.create(diary_params)
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
        params.require(:diary).permit(:user_id, :description)
    end
end
