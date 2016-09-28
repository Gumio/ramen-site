class AddAttachmentImageToShops < ActiveRecord::Migration
  def self.up
    change_table :shops do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :shops, :image
  end
end
