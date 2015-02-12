require 'rails_helper'

RSpec.describe "lectures/edit", type: :view do
  before(:each) do
    @lecture = FactoryGirl.create(:lecture)
    assign(:lecture, @lecture)
  end

  it "renders the edit lecture form" do
    render

    assert_select "form[action=?][method=?]", lecture_path(@lecture), "post" do

      assert_select "input#lecture_name[name=?]", "lecture[name]"

      assert_select "textarea#lecture_content[name=?]", "lecture[content]"

      assert_select "input#lecture_slides[name=?]", "lecture[slides]"
    end
  end
end
