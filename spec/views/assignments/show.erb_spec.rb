require 'rails_helper'

RSpec.describe "assignments/show", type: :view do
  before(:each) do
    @assignment = FactoryGirl.create(:assignment)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@assignment.name.upcase)
    expect(rendered).to match(@assignment.base_info.html_safe)
    expect(rendered).to match(@assignment.due.to_s)
  end

end
