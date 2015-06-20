require "rails_helper"

describe Candidate do
  describe "validations" do
    it { should validate_presence_of :name }
  end
end
