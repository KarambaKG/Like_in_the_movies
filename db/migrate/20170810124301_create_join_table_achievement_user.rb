class CreateJoinTableAchievementUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :achievements, :users do |t|
      t.index [:achievement_id, :user_id]
      t.index [:user_id, :achievement_id]
    end
  end
end
