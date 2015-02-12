require 'faker'

FactoryGirl.define do
	
	factory :user do
		email { Faker::Internet.email }
    	password { Faker::Internet.password(10, 20) }
	end

	factory :course do
      code { Faker::Lorem.characters(5) }
      description { Faker::Lorem.paragraph }
      user { FactoryGirl.create(:user) }
	end

end
