require "rails_helper"

describe Question do
  describe "associations" do
    it { should have_many(:answers).dependent(:destroy) }
  end

  describe "validations" do
    it { should validate_presence_of :body }
  end
end
