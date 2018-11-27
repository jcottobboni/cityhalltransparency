require 'rails_helper'

RSpec.describe "payrolls/edit", type: :view do
  before(:each) do
    @payroll = assign(:payroll, Payroll.create!(
      :registration => 1,
      :name => "MyString",
      :jobrole => nil,
      :workspace => nil,
      :admission_type => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit payroll form" do
    render

    assert_select "form[action=?][method=?]", payroll_path(@payroll), "post" do

      assert_select "input[name=?]", "payroll[registration]"

      assert_select "input[name=?]", "payroll[name]"

      assert_select "input[name=?]", "payroll[jobrole_id]"

      assert_select "input[name=?]", "payroll[workspace_id]"

      assert_select "input[name=?]", "payroll[admission_type]"

      assert_select "input[name=?]", "payroll[status]"
    end
  end
end
