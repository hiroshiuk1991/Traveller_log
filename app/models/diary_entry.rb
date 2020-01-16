class DiaryEntry < ApplicationRecord
  belongs_to :diary
  has_many :destinations
  has_many :photos
end
