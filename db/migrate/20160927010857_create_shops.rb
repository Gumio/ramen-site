class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :prefectures_id
      t.string :address
      t.string :tell
      t.text :about
      t.time :open_time
      t.time :close_time
      t.string :holiday
      t.float :evaluation
      t.string :image

      t.timestamps
    end
  end
end
