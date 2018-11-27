require 'rails_helper'

RSpec.describe "workspaces/index", type: :view do
  before(:each) do
    assign(:workspaces, [
      Workspace.create!(
        :name => "Name"
      ),
      Workspace.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of workspaces" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
