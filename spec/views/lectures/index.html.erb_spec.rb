require 'rails_helper'

RSpec.describe "lectures/index", type: :view do
  
  before(:each) do
    @lecture = FactoryGirl.create(:lecture)
    assign(:lectures, [@lecture, @lecture])
  end

  it "renders a list of lectures" do
    render
    assert_select "tr>td", :text => @lecture.name.to_s, :count => 2
    assert_select "tr>td", :text => @lecture.content.to_s, :count => 2
    assert_select "tr>td", :text => @lecture.slides.to_s, :count => 2
  end
end
