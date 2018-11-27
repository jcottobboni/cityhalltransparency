require 'rails_helper'

RSpec.describe "payrolls/index", type: :view do
  before(:each) do
    assign(:payrolls, [
      Payroll.create!(
        :registration => 2,
        :name => "Name",
        :jobrole => nil,
        :workspace => nil,
        :admission_type => "Admission Type",
        :status => "Status"
      ),
      Payroll.create!(
        :registration => 2,
        :name => "Name",
        :jobrole => nil,
        :workspace => nil,
        :admission_type => "Admission Type",
        :status => "Status"
      )
    ])
  end

  it "renders a list of payrolls" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Admission Type".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
