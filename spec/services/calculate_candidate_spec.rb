require "rails_helper"

describe CalculateCandidate do
  describe "#execute" do
    context "when a candidate has more selected answers than any other" do
      it "returns the candidate with the most selected answers" do
        julie = build(:candidate)
        olo = build(:candidate)
        answers = [
          build(:answer, candidate: julie),
          build(:answer, candidate: julie),
          build(:answer, candidate: olo),
        ]

        result = CalculateCandidate.new(answers).execute

        expect(result).to eq [julie]
      end
    end

    context "when multiple candidates have the most selected answers" do
      it "returns the candidates with the most selected answers" do
        julie = build(:candidate)
        olo = build(:candidate)
        answers = [
          build(:answer, candidate: julie),
          build(:answer, candidate: olo),
        ]

        result = CalculateCandidate.new(answers).execute

        expect(result).to eq [julie, olo]
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
