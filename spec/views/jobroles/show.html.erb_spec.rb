require 'rails_helper'

RSpec.describe "jobroles/show", type: :view do
  before(:each) do
    @jobrole = assign(:jobrole, Jobrole.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
