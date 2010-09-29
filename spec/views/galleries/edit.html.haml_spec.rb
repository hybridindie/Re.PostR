require 'spec_helper'

describe "galleries/edit.html.haml" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery,
      :new_record? => false
    ))
  end

  it "renders the edit gallery form" do
    render

    rendered.should have_selector("form", :action => gallery_path(@gallery), :method => "post") do |form|
    end
  end
end
