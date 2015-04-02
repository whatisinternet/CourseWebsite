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
    lecture_date Faker::Date.forward(2)
    slides { Faker::Internet.url }
    course { FactoryGirl.create(:course) }
  end

  factory :assignment do
    base_info { Faker::Lorem.paragraph }
    name { Faker::Lorem.characters(5) }
    course { FactoryGirl.create(:course) }
    due { Faker::Date.forward(23) }
  end

  factory :assignment_question do
    question { Faker::Lorem.paragraph }
    question_number { 5 }
    weight { 5 }
    help { Faker::Lorem.paragraph }
    assignment { FactoryGirl.create(:assignment)}
  end

  factory :note do
    title   { Faker::Lorem.characters(25) }
    body    { Faker::Lorem.paragraph }
    date    { Faker::Date.forward(23) }
    course { FactoryGirl.create(:course) }
    display { false }
  end

end
