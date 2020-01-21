class DiaryEntrySerializer < ActiveModel::Serializer
  attributes :id, :date, :content, :diary_id

  belongs_to :diary
  has_many :destinations
  has_many :photos
end
