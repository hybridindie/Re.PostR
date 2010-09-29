require 'spec_helper'

describe "audios/show.html.haml" do
  before(:each) do
    @audio = assign(:audio, stub_model(Audio))
  end

  it "renders attributes in <p>" do
    render
  end
end
