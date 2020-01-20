class DiaryEntriesController < ApplicationController
    def create
        diary_entry = DiaryEntry.create(diary_entry_params)
    
        if diary_entry.valid? 
          render json: diary_entry
        else
          render json: {errors: diary_entry.errors.full_messages}, status: :forbidden
        end
    end
    
      private
      def diary_entry_params
        params.require(:diary_entry).permit(
          :diary_id,
          :date,
          :content,
          photos:[
            :photo_url
          ],
          desinations:[
            :city,
            :country
          ]
        )
      end
end
