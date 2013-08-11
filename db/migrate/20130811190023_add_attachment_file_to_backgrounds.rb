class AddAttachmentFileToBackgrounds < ActiveRecord::Migration
  def self.up
    change_table :backgrounds do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :backgrounds, :file
  end
end
