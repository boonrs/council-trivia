require "rails_helper"

describe Answer do
  describe "associations" do
    it { should belong_to :candidate }
    it { should belong_to :question }
  end

  describe "validations" do
    it { should validate_presence_of :body }
    it { should validate_presence_of :candidate }
    it { should validate_presence_of :question }
    it { should validate_length_of(:body).is_at_most(500) }
  end
end
