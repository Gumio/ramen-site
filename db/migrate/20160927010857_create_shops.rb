class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name, null:false
      t.integer :prefectures_id, null:false
      t.string :address, null:false
      t.string :tell, null:false
      t.text :about
      t.time :open_time, null:false
      t.time :close_time, null:false
      t.string :holiday
      t.float :evaluation, null:false
      t.string :image

      t.timestamps
    end
  end
end
