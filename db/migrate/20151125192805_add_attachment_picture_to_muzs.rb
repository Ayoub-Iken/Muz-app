class AddAttachmentPictureToMuzs < ActiveRecord::Migration
  def self.up
    change_table :muzs do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :muzs, :picture
  end
end
