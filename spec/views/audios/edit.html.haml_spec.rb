require 'spec_helper'

describe "audios/edit.html.haml" do
  before(:each) do
    @audio = assign(:audio, stub_model(Audio,
      :new_record? => false
    ))
  end

  it "renders the edit audio form" do
    render

    rendered.should have_selector("form", :action => audio_path(@audio), :method => "post") do |form|
    end
  end
end
