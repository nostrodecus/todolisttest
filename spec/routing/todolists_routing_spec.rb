require "spec_helper"

describe TodolistsController do
  describe "routing" do

    it "routes to #index" do
      get("/todolists").should route_to("todolists#index")
    end

    it "routes to #new" do
      get("/todolists/new").should route_to("todolists#new")
    end

    it "routes to #show" do
      get("/todolists/1").should route_to("todolists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/todolists/1/edit").should route_to("todolists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/todolists").should route_to("todolists#create")
    end

    it "routes to #update" do
      put("/todolists/1").should route_to("todolists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/todolists/1").should route_to("todolists#destroy", :id => "1")
    end

  end
end
