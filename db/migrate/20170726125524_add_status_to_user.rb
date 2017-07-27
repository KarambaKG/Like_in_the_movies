class AddStatusToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :status, :string, default: 'not_active'
  end
end