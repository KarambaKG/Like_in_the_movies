class CreateJoinTableAchievementCommand < ActiveRecord::Migration[5.1]
  def change
    create_join_table :achievements, :commands do |t|
      t.index [:achievement_id, :command_id]
      t.index [:command_id, :achievement_id]
    end
  end
end
