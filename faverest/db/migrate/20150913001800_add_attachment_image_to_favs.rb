class AddAttachmentImageToFavs < ActiveRecord::Migration
  def self.up
    change_table :favs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :favs, :image
  end
end
