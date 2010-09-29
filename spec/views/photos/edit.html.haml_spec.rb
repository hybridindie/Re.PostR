require 'spec_helper'

describe "photos/edit.html.haml" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :new_record? => false
    ))
  end

  it "renders the edit photo form" do
    render

    rendered.should have_selector("form", :action => photo_path(@photo), :method => "post") do |form|
    end
  end
end
