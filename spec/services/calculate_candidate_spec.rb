require "rails_helper"

describe CalculateCandidate do
  describe "#execute" do
    context "when a candidate has more selected answers than any other" do
      it "returns an ordered array of candidates" do
        julie = build(:candidate)
        olo = build(:candidate)

        julie_answer = build(:answer, candidate: julie)
        olo_answer1 = build(:answer, candidate: olo)
        olo_answer2 = build(:answer, candidate: olo)

        answers = [julie_answer, olo_answer1, olo_answer2]
        candidates = [
          [olo, [olo_answer1, olo_answer2]],
          [julie, [julie_answer]],
        ]

        result = CalculateCandidate.new(answers).execute

        expect(result).to eq candidates
      end
    end

    context "when no candidate has an answer selected" do
      it "returns no candidates" do
        answers = []

        result = CalculateCandidate.new(answers).execute

        expect(result).to eq []
      end
    end
  end
end
