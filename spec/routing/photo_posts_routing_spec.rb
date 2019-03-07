require "rails_helper"

RSpec.describe PhotoPostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/photo_posts").to route_to("photo_posts#index")
    end

    it "routes to #new" do
      expect(:get => "/photo_posts/new").to route_to("photo_posts#new")
    end

    it "routes to #show" do
      expect(:get => "/photo_posts/1").to route_to("photo_posts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/photo_posts/1/edit").to route_to("photo_posts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/photo_posts").to route_to("photo_posts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/photo_posts/1").to route_to("photo_posts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/photo_posts/1").to route_to("photo_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/photo_posts/1").to route_to("photo_posts#destroy", :id => "1")
    end
  end
end
