FactoryGirl.define do
  factory :candidate do
    sequence(:name) { |n| "name #{n}" }
  end
end
