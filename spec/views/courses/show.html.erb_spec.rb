require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    @course = FactoryGirl.create(:course)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@course.code)
    expect(rendered).to match(@course.description)
    expect(rendered).to match(@course.user_id.to_s)
  end
end
