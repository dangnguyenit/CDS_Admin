require "spec_helper"

describe CdsTemplatesController do
  describe "routing" do

    it "routes to #index" do
      get("/cds_templates").should route_to("cds_templates#index")
    end

    it "routes to #new" do
      get("/cds_templates/new").should route_to("cds_templates#new")
    end

    it "routes to #show" do
      get("/cds_templates/1").should route_to("cds_templates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cds_templates/1/edit").should route_to("cds_templates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cds_templates").should route_to("cds_templates#create")
    end

    it "routes to #update" do
      put("/cds_templates/1").should route_to("cds_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cds_templates/1").should route_to("cds_templates#destroy", :id => "1")
    end

  end
end
