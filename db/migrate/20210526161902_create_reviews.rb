class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :brewery_id
      t.integer :rating
      t.string :text

      t.timestamps
    end
  end
end
