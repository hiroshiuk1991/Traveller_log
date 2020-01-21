class RemoveDateFromDestinations < ActiveRecord::Migration[6.0]
  def change

    remove_column :destinations, :date, :date
  end
end
