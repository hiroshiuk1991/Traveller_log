class DiaryEntry < ApplicationRecord
  belongs_to :diary
  has_many :destinations
  has_many :photos

  def create
    diary_entry = Diary_entry.create(diary_entry_params)

    if valid? 
      render json: diary_entry
    else
      render json: {errors: diary_entry.errors.full_messages}, status: :forbidden
  end

  private
  def diary_entry_params
    params.require(:diary_entry).permit(
      :date,
      :content,
      photo:[
        :photo_url
      ],
      desination:[
        :city,
        :country
      ]
    )
  end
end
