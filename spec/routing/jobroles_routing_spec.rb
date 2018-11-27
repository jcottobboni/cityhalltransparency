require "rails_helper"

RSpec.describe JobrolesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/jobroles").to route_to("jobroles#index")
    end

    it "routes to #new" do
      expect(:get => "/jobroles/new").to route_to("jobroles#new")
    end

    it "routes to #show" do
      expect(:get => "/jobroles/1").to route_to("jobroles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/jobroles/1/edit").to route_to("jobroles#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/jobroles").to route_to("jobroles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/jobroles/1").to route_to("jobroles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/jobroles/1").to route_to("jobroles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jobroles/1").to route_to("jobroles#destroy", :id => "1")
    end
  end
end
