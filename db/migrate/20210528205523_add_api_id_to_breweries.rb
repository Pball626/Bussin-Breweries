class AddApiIdToBreweries < ActiveRecord::Migration[6.1]
  def change
    add_column :breweries, :api_id, :integer
  end
end
