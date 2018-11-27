require 'rails_helper'

RSpec.describe "jobroles/index", type: :view do
  before(:each) do
    assign(:jobroles, [
      Jobrole.create!(
        :name => "Name"
      ),
      Jobrole.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of jobroles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
