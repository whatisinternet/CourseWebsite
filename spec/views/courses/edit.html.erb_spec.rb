require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = FactoryGirl.create(:course)
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_code[name=?]", "course[code]"

      assert_select "input#course_description[name=?]", "course[description]"

      assert_select "input#course_user_id[name=?]", "course[user_id]"
    end
  end
end
