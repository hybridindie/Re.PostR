require 'spec_helper'

describe "photos/new.html.haml" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :new_record? => true
    ))
  end

  it "renders new photo form" do
    render

    rendered.should have_selector("form", :action => photos_path, :method => "post") do |form|
    end
  end
end
