require 'rails_helper'

RSpec.describe "assignments/show", type: :view do
  before(:each) do
    @assignment = FactoryGirl.create(:assignment)
    question = FactoryGirl.create(:assignment_question)
    question.assignment_id = @assignment.id
    question.save!
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@assignment.name.upcase)
    expect(rendered).to match(@assignment.base_info.html_safe)
    expect(rendered).to match(@assignment.due.to_s)
  end

  it "renders the questions for the assignment" do
    render
    expect(rendered).to match(@assignment.assignment_questions.first.question)
  end

end
