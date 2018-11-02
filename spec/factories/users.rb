
FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Test#{n}" }
  end
end
