require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
	it "should have valid factory" do
	    expect(FactoryGirl.build(:user)).to be_valid
	end

	it "should require a email" do
	    expect(FactoryGirl.build(:user, :email => "", :password => Faker::Internet.password(10, 20) )).to_not be_valid
	end

	it "should require a password" do
	    expect(FactoryGirl.build(:user, :email => Faker::Internet.email, :password => "")).to_not be_valid
	end

	it "should require a valid email" do
	    expect(FactoryGirl.build(:user, :email => "inv@lid@email@@.x(", :password =>  Faker::Internet.password(10, 20) )).to_not be_valid
	end

	it "should require a valid password" do
	    expect(FactoryGirl.build(:user, :email => Faker::Internet.email, :password => "-1")).to_not be_valid
	end

end
