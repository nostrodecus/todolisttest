require 'spec_helper'

describe "todolists/new.html.erb" do
  before(:each) do
    assign(:todolist, stub_model(Todolist,
      :taskname => "MyString",
      :taskdesc => "MyString"
    ).as_new_record)
  end

  it "renders new todolist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => todolists_path, :method => "post" do
      assert_select "input#todolist_taskname", :name => "todolist[taskname]"
      assert_select "input#todolist_taskdesc", :name => "todolist[taskdesc]"
    end
  end
end
