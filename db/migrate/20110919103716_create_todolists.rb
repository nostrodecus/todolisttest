class CreateTodolists < ActiveRecord::Migration
  def self.up
    create_table :todolists do |t|
      t.string :taskname
      t.string :taskdesc
      t.datetime :deadline_at
      t.integer :tskpriority

      t.timestamps
    end
  end

  def self.down
    drop_table :todolists
  end
end
