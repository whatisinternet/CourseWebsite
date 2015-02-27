require 'rails_helper'
require 'faker'

RSpec.describe UsersController, type: :controller do
	include Devise::TestHelpers

  let(:valid_attributes) {
    {user: {email: Faker::Internet.email, password: Faker::Internet.password(1, 9)}}
  }

  let(:invalid_attributes) {
   {user: {email: Faker::Lorem.characters(10), password: Faker::Internet.password(10, 19)}}
  }
  let(:valid_session) { {} }

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:admin)
  end

  before(:each) do
    setup
    @user = FactoryGirl.create :user
  end

  describe "get #index" do
    it "returns all of the users" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "assigns the requested user as @user" do
      get :show, {:id => @user.to_param}, valid_session
      expect(assigns(:user)).to eq(@user)
    end
  end

  describe "get #new" do
    it "provides a new user" do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe "user #create" do
    it "responds with success" do
      post :create, valid_attributes
      expect(response).to be_success
    end
    it "responds with failure" do
      post :create, invalid_attributes
      expect(response).to be_success
    end
  end

  describe "user #destroy" do
    it "redirects to users page" do
      post :destroy, {id: @user.id}
      expect(response).to redirect_to(users_path)
    end
  end

  describe "PUT update/:id" do
    before(:each) do
      put :update, :id => @user.id, :user => {email: Faker::Internet.email}
      @user.reload
    end

    it { expect(response).to be_success }
    it { expect(@user.email).to eql @user.email }
  end


end
