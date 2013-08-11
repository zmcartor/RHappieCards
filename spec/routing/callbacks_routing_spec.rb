require "spec_helper"

describe CallbacksController do
  describe "routing" do

    it "routes to #index" do
      get("/callbacks").should route_to("callbacks#index")
    end

    it "routes to #new" do
      get("/callbacks/new").should route_to("callbacks#new")
    end

    it "routes to #show" do
      get("/callbacks/1").should route_to("callbacks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/callbacks/1/edit").should route_to("callbacks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/callbacks").should route_to("callbacks#create")
    end

    it "routes to #update" do
      put("/callbacks/1").should route_to("callbacks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/callbacks/1").should route_to("callbacks#destroy", :id => "1")
    end

  end
end
