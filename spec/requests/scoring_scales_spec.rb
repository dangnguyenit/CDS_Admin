require 'spec_helper'

describe "ScoringScales" do
  describe "GET /scoring_scales" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get scoring_scales_path
      response.status.should be(200)
    end
  end
end
