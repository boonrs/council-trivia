class HomeController < ApplicationController
  def index
    @questions = Question.all
  end

  def results
    questions = params[:questions]
    if questions
      @answers = Answer.where(id: questions.values)
      @candidates = CalculateCandidate.new(@answers).execute
    end
  end
end
