class Todolist < ActiveRecord::Base
validates_presence_of :taskname, :taskdesc
belongs_to :user
end
