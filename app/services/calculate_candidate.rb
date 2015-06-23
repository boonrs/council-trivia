class CalculateCandidate
  def initialize(answers)
    @answers = answers
  end

  def execute
    @answers.group_by(&:candidate).to_a.sort_by{ |a| a.second.count }.reverse!
  end
end
