require 'spec_helper'

describe "videos/edit.html.haml" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :new_record? => false
    ))
  end

  it "renders the edit video form" do
    render

    rendered.should have_selector("form", :action => video_path(@video), :method => "post") do |form|
    end
  end
end
