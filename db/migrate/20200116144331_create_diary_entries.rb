class CreateDiaryEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :diary_entries do |t|
      t.references :diary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
