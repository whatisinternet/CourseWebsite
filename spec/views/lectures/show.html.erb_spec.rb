require 'rails_helper'

RSpec.describe "lectures/show", type: :view do
  before(:each) do
    @lecture = FactoryGirl.create(:lecture)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@lecture.name)
    expect(rendered).to match(@lecture.content)
    expect(rendered).to match(@lecture.slides)
  end
end
