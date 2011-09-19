require 'spec_helper'

describe Todolist do
  it "returns happy from vacation" do
    tdl = todolist.new :taskname => 'test name', :taskdesc => 'test desc'
    tdl.taskname.should == 'test name'
  end
end
