require 'rails_helper'

RSpec.describe AssignmentsController, type: :controller do
  include Devise::TestHelpers

  let(:valid_attributes) {
    {name: Faker::Lorem.characters(5),  basic_info: Faker::Lorem.paragraph, due: Date.today + 5 }
  }

  let(:invalid_attributes) {
    {name: Faker::Lorem.characters(5),  basic_info: Faker::Lorem.paragraph, due: Date.today + 5 }
  }

  let(:valid_session) { {} }

  before(:each) do
    setup
    @assignment = FactoryGirl.create :assignment
  end

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:admin)
  end


  describe "show" do
    it "assigns the requested assignment as
    @assignment with assignment_questions appended" do
      get :show, {:id => @assignment.to_param}, valid_session
      expect(assigns(:assignment)).to eq(@assignment)
    end
  end
end
