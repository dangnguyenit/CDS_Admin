require "spec_helper"

describe CdsStructuresController do
  describe "routing" do

    it "routes to #index" do
      get("/cds_structures").should route_to("cds_structures#index")
    end

    it "routes to #new" do
      get("/cds_structures/new").should route_to("cds_structures#new")
    end

    it "routes to #show" do
      get("/cds_structures/1").should route_to("cds_structures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cds_structures/1/edit").should route_to("cds_structures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cds_structures").should route_to("cds_structures#create")
    end

    it "routes to #update" do
      put("/cds_structures/1").should route_to("cds_structures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cds_structures/1").should route_to("cds_structures#destroy", :id => "1")
    end

  end
end
