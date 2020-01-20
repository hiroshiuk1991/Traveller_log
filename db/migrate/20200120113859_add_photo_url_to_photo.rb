class AddPhotoUrlToPhoto < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :photo_url, :string
  end
end
