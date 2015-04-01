require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    @course = FactoryGirl.create(:course)
    note = FactoryGirl.create(:note)
    note.course_id = @course.id
    note.save!
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@course.code)
    expect(rendered).to match(@course.description)
  end

  it "renders the notes for the course" do
    render
    expect(rendered).to match(@course.notes.first.title)
  end
end
