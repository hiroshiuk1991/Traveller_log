class AddDateToDiaryEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :diary_entries, :date, :date
  end
end
