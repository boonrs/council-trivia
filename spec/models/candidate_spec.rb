require "rails_helper"

describe Candidate do
  describe "validations" do
    good_url = "http://codeforamerica.org"
    bad_url = "codeforamerica"
    it { should validate_presence_of :name }
    it { should allow_value(good_url).for(:photo_url) }
    it { should_not allow_value(bad_url).for(:photo_url) }
    it { should allow_value(good_url).for(:website) }
    it { should_not allow_value(bad_url).for(:website) }
  end
end
