require 'spec_helper'

describe "audios/new.html.haml" do
  before(:each) do
    assign(:audio, stub_model(Audio,
      :new_record? => true
    ))
  end

  it "renders new audio form" do
    render

    rendered.should have_selector("form", :action => audios_path, :method => "post") do |form|
    end
  end
end
