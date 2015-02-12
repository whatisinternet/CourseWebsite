require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    @course = FactoryGirl.create(:course)
    assign(:courses, [@course, @course])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => @course.code.to_s, :count => 2
    assert_select "tr>td", :text => @course.description.to_s, :count => 2
  end
end
