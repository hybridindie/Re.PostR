require "spec_helper"

describe AudiosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/audios" }.should route_to(:controller => "audios", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/audios/new" }.should route_to(:controller => "audios", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/audios/1" }.should route_to(:controller => "audios", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/audios/1/edit" }.should route_to(:controller => "audios", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/audios" }.should route_to(:controller => "audios", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/audios/1" }.should route_to(:controller => "audios", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/audios/1" }.should route_to(:controller => "audios", :action => "destroy", :id => "1")
    end

  end
end
