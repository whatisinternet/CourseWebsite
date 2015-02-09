require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :code => "MyString",
      :description => "MyString",
      :user_id => 1
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_code[name=?]", "course[code]"

      assert_select "input#course_description[name=?]", "course[description]"

      assert_select "input#course_user_id[name=?]", "course[user_id]"
    end
  end
end
