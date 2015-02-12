require 'rails_helper'

RSpec.describe "lectures/new", type: :view do
  before(:each) do
    @lecture = FactoryGirl.build(:lecture)
    assign(:lecture, @lecture)
  end

  it "renders new lecture form" do
    render

    assert_select "form[action=?][method=?]", lectures_path, "post" do

      assert_select "input#lecture_name[name=?]", "lecture[name]"

      assert_select "textarea#lecture_content[name=?]", "lecture[content]"

      assert_select "input#lecture_slides[name=?]", "lecture[slides]"
    end
  end
end
