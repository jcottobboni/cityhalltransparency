require 'rails_helper'

RSpec.describe "jobroles/edit", type: :view do
  before(:each) do
    @jobrole = assign(:jobrole, Jobrole.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit jobrole form" do
    render

    assert_select "form[action=?][method=?]", jobrole_path(@jobrole), "post" do

      assert_select "input[name=?]", "jobrole[name]"
    end
  end
end
