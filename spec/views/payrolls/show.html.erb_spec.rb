require 'rails_helper'

RSpec.describe "payrolls/show", type: :view do
  before(:each) do
    @payroll = assign(:payroll, Payroll.create!(
      :registration => 2,
      :name => "Name",
      :jobrole => nil,
      :workspace => nil,
      :admission_type => "Admission Type",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Admission Type/)
    expect(rendered).to match(/Status/)
  end
end
