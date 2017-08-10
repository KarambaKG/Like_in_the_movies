class AddAttachmentAvatarToAchievements < ActiveRecord::Migration[5.1]
  def self.up
    change_table :achievements do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :achievements, :avatar
  end
end
