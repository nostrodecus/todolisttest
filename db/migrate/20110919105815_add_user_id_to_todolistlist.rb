class AddUserIdToTodolistlist < ActiveRecord::Migration
  def self.up
    add_column :todolists, :user_id, :integer
  end

  def self.down
    remove_column :todolists, :user_id
  end
end
