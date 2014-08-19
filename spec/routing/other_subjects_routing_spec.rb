require "spec_helper"

describe OtherSubjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/other_subjects").should route_to("other_subjects#index")
    end

    it "routes to #new" do
      get("/other_subjects/new").should route_to("other_subjects#new")
    end

    it "routes to #show" do
      get("/other_subjects/1").should route_to("other_subjects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/other_subjects/1/edit").should route_to("other_subjects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/other_subjects").should route_to("other_subjects#create")
    end

    it "routes to #update" do
      put("/other_subjects/1").should route_to("other_subjects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/other_subjects/1").should route_to("other_subjects#destroy", :id => "1")
    end

  end
end
