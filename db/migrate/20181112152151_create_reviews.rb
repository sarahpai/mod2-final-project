class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.string :title
      t.string :comment
      t.integer :star

      t.timestamps
    end
  end
end
