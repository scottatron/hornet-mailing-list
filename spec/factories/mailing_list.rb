FactoryGirl.define do

  factory :subscriber do
    email { Faker::Internet.email }
  end

  factory :list do
  end

end