class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :brewery_id
      t.datetime :time

      t.timestamps
    end
  end
end
