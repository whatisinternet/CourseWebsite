require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    @course = FactoryGirl.create(:course)
    assign(:courses, [@course, @course])
  end

  it "renders a list of courses" do
    render
    expect(rendered).to match(@course.code.to_s)
    expect(rendered).to match(@course.description.to_s)
  end
end
