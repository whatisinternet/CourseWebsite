require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    @course = FactoryGirl.create(:course)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
  end
end
