class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :star
      t.text :comment
      t.integer :shop_id

      t.timestamps
    end
  end
end
