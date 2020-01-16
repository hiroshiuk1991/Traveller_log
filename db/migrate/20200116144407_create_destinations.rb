class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.references :diary_entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
