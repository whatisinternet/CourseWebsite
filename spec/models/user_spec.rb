# == Schema Information
#
# Table name: users
#
#  created_at             :datetime         not null
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  id                     :integer          not null, primary key
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do

  describe User do
  	it { should have_many(:courses) }
  end

	it "should have valid factory" do
	    expect(FactoryGirl.build(:user)).to be_valid
      expect(FactoryGirl.build(:admin)).to be_valid
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

	describe "get_courses" do
		it "should return the courses related to a user" do
			course = FactoryGirl.create(:course)
			user = User.find_by_id(course.user_id)
			expect(user.get_courses).to match(course) 
		end
	end

	describe "course_by" do
		it "should return the course by the code and section" do
			course = FactoryGirl.create(:course)
			user = User.find_by_id(course.user_id)
			expect(user.course_by(course.code)).to match(course) 
		end
	end


end
