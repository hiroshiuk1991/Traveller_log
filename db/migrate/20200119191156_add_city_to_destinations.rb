class AddCityToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :city, :string
  end
end
