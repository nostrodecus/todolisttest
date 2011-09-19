require 'spec_helper'

describe "todolists/index.html.erb" do
  before(:each) do
    assign(:todolists, [
      stub_model(Todolist,
        :taskname => "Taskname",
        :taskdesc => "Taskdesc"
      ),
      stub_model(Todolist,
        :taskname => "Taskname",
        :taskdesc => "Taskdesc"
      )
    ])
  end

  it "renders a list of todolists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Taskname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Taskdesc".to_s, :count => 2
  end
end
