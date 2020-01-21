class User < ApplicationRecord
    has_many :diaries 
    has_many :diary_entries, through: :diaries
    has_many :destinations, through: :diary_entries
    has_many :photos, through: :diary_entries
    has_secure_password
    
end
