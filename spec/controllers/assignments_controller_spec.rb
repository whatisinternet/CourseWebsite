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
  describe "index" do
    it "should should return all of the assignments" do
      assignments = Assignment.all
      get :index, {}, valid_session
      expect(assigns(:assignments)).to eq(assignments)
    end
  end

  describe "course_assignment" do
    it "returns assignments based on course" do
      assignment2 = FactoryGirl.create(:assignment)
      course = FactoryGirl.create(:course)
      @assignment.course_id = course.id
      @assignment.save!
      assignments = Array.new
      assignments.push(@assignment)
      get :course_assignment, {:course => @assignment.course_id}, valid_session
      expect(assigns(:assignments)).to eq(assignments)
      expect(assigns(:assignments)).not_to eq(*(assignment2))
    end
  end

end
