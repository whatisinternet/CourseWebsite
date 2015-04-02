require 'rails_helper'

RSpec.describe "lectures/show", type: :view do
  before(:each) do
    @lecture = FactoryGirl.create(:lecture)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer)
    @content = markdown.render(@lecture.content)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@lecture.name)
    expect(rendered).to match(@content)
    expect(rendered).to match(@lecture.slides)
  end
end
