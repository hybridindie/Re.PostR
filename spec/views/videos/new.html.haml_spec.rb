require 'spec_helper'

describe "videos/new.html.haml" do
  before(:each) do
    assign(:video, stub_model(Video,
      :new_record? => true
    ))
  end

  it "renders new video form" do
    render

    rendered.should have_selector("form", :action => videos_path, :method => "post") do |form|
    end
  end
end
