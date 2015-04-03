require 'rails_helper'

RSpec.describe "assignments/index", type: :view do
  before(:each) do
    @assignment = FactoryGirl.create(:assignment)
    assign(:assignments, [@assignment, @assignment])
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@assignment.name)
    expect(rendered).to match(@assignment.due.to_s)
  end

end
