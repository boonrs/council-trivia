require "rails_helper"

describe "quizzes" do
  it "should display questions and answers" do
    questions = create_list(:question, 3, :with_answers)

    visit root_url

    questions.each do |question|
      expect(page).to have_content question.body
      question.answers.each do |answer|
        expect(page).to have_content answer.body
      end
    end
  end

  it "should allow submitting answers" do
    questions = create_list(:question, 3, :with_answers)
    answers = questions.map { |q| q.answers.first }

    visit root_url

    answers.each do |answer|
      choose answer.body
    end

    click_on "Submit"

    answers.each do |answer|
      within "#question_#{answer.question.id}" do
        expect(page).to have_content answer.candidate.name
        expect(page).to have_content answer.body
        expect(page).to have_content answer.question.body
      end
    end
  end
end
