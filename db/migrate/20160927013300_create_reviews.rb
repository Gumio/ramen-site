class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :star, null:false
      t.text :comment
      t.references :shop, null:false

      t.timestamps
    end
  end
end
