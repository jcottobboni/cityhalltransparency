require 'rails_helper'

RSpec.describe "workspaces/show", type: :view do
  before(:each) do
    @workspace = assign(:workspace, Workspace.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
