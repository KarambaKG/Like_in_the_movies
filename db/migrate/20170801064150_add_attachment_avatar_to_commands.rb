class AddAttachmentAvatarToCommands < ActiveRecord::Migration[5.1]
  def self.up
    change_table :commands do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :commands, :avatar
  end
end
