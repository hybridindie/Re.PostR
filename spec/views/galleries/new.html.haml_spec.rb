require 'spec_helper'

describe "galleries/new.html.haml" do
  before(:each) do
    assign(:gallery, stub_model(Gallery,
      :new_record? => true
    ))
  end

  it "renders new gallery form" do
    render

    rendered.should have_selector("form", :action => galleries_path, :method => "post") do |form|
    end
  end
end
