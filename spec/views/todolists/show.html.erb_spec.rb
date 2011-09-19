require 'spec_helper'

describe "todolists/show.html.erb" do
  before(:each) do
    @todolist = assign(:todolist, stub_model(Todolist,
      :taskname => "Taskname",
      :taskdesc => "Taskdesc"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Taskname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Taskdesc/)
  end
end
