require 'rails_helper'

RSpec.describe AdminController, type: :controller do

  let(:valid_course_attributes) {
    {code: Faker::Lorem.characters(5),  description: Faker::Lorem.paragraph, user: FactoryGirl.create(:user)}
  }

  let(:valid_session) { {} }

  before(:each) do
    setup
  end

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
  end

  describe "#index" do
    it "returns all of the user related courses" do
      course = Course.create! valid_course_attributes
      get :index, valid_session
      expect(assigns(:courses)).to include(course)
    end
  end
end
