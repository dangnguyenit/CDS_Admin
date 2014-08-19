require "spec_helper"

describe MinimumRequirementsController do
  describe "routing" do

    it "routes to #index" do
      get("/minimum_requirements").should route_to("minimum_requirements#index")
    end

    it "routes to #new" do
      get("/minimum_requirements/new").should route_to("minimum_requirements#new")
    end

    it "routes to #show" do
      get("/minimum_requirements/1").should route_to("minimum_requirements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/minimum_requirements/1/edit").should route_to("minimum_requirements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/minimum_requirements").should route_to("minimum_requirements#create")
    end

    it "routes to #update" do
      put("/minimum_requirements/1").should route_to("minimum_requirements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/minimum_requirements/1").should route_to("minimum_requirements#destroy", :id => "1")
    end

  end
end
