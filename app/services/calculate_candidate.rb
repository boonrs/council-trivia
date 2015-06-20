class CalculateCandidate
  def initialize(answers)
    @answers = answers
  end

  def execute
    answers_by_candidates = @answers.group_by(&:candidate)
    max = (answers_by_candidates.map { |k, v| v.count }).max
    (
      answers_by_candidates.map do |k, v|
        (v.count == max) ? k : 0
      end
    ).select { |a| a != 0 }
  end
end
