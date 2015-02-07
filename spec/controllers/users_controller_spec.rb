require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	include Devise::TestHelpers

  let(:valid_attributes) {
    {email: "valid@email.com", password: "password"}
  }

  let(:invalid_attributes) {
   {email: "valid@emai@@l.com", password: "pasword"}
  }
  let(:valid_session) { {} }

  before(:each) do
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


end
