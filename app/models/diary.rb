class Diary < ApplicationRecord
  belongs_to :user
  has_many :diary_entries
end
