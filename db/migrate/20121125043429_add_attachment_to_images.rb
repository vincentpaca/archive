class AddAttachmentToImages < ActiveRecord::Migration
  def self.up
    add_attachment :images, :picture
  end

  def self.down
    add_attachment :images, :picture
  end
end
