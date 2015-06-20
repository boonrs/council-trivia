FactoryGirl.define do
  factory :question do
    sequence(:body) { |n| "Question #{n}" }

    trait :with_answers do
      after :create do |question|
        create_list(:answer, 2, question: question)
      end
    end
  end
end
