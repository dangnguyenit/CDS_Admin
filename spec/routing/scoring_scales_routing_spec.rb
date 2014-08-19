require "spec_helper"

describe ScoringScalesController do
  describe "routing" do

    it "routes to #index" do
      get("/scoring_scales").should route_to("scoring_scales#index")
    end

    it "routes to #new" do
      get("/scoring_scales/new").should route_to("scoring_scales#new")
    end

    it "routes to #show" do
      get("/scoring_scales/1").should route_to("scoring_scales#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scoring_scales/1/edit").should route_to("scoring_scales#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scoring_scales").should route_to("scoring_scales#create")
    end

    it "routes to #update" do
      put("/scoring_scales/1").should route_to("scoring_scales#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scoring_scales/1").should route_to("scoring_scales#destroy", :id => "1")
    end

  end
end
