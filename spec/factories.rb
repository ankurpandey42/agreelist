require 'faker'

FactoryGirl.define do
  factory :reason_category do
    name "MyString"
  end

  factory :beta_email do
    
  end

  factory :comment do
    text "MyText"
    individual_id 1
    statement_id 1
  end

  factory :email do
    email "MyString"
  end

  factory :statement do
    content { Faker::Lorem.sentence }
  end

  factory :individual do
    name { Faker::Name.name }
    twitter { Faker::Internet.user_name }
    followers_count { 5 }
  end

  factory :agreement do
    url { Faker::Internet.url }
    statement
    individual
  end

  factory :profession do
    name { Faker::Name.name }
  end
end
