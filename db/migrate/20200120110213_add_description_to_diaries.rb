class AddDescriptionToDiaries < ActiveRecord::Migration[6.0]
  def change
    add_column :diaries, :description, :text
  end
end
