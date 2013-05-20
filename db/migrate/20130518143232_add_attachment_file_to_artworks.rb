class AddAttachmentFileToArtworks < ActiveRecord::Migration
  def self.up
    change_table :artworks do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :artworks, :file
  end
end
