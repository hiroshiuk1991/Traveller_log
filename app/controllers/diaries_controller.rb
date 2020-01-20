class DiariesController < ApplicationController

    def create 
        diary = Diary.create(diary_params)
        if diary.valid? 
            render json: diary
        else
            render json: {errors: diary.errors.full_messages}, status: :forbidden
        end
    end 

    private

    def diary_params
        params.require(:diary).permit(:user_id, :description)
    end
end
