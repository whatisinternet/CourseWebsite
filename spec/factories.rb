require 'faker'

FactoryGirl.define do

  factory :user do
   email { Faker::Internet.email }
   password { Faker::Internet.password(10, 20) }
   factory :admin do
     after(:create) {|user| user.add_role(:admin)}
   end
  end

  factory :course do
      code { Faker::Lorem.characters(5) }
      description { Faker::Lorem.paragraph }
      user { FactoryGirl.create(:user) }
  end

  factory :lecture do
    name { Faker::Lorem.characters(255) }
    content { Faker::Lorem.characters(50) }
    slides { Faker::Internet.url }
    course { FactoryGirl.create(:course) }
  end

  factory :role do
    role :admin
  end

end
