class DiarySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :description

  belongs_to :user
  has_many :diary_entries
end
