class DiariesController < ApplicationController

    def create 
        diary = Diary.create(diary_params)
    end 

    private

    def diary_params
        params.require(:diary).permit(:user_id)
    end
end
