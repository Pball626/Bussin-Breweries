class CreateBreweries < ActiveRecord::Migration[6.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :number
      t.string :website
      t.string :picture

      t.timestamps
    end
  end
end
