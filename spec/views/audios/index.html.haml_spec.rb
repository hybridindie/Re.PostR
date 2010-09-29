require 'spec_helper'

describe "audios/index.html.haml" do
  before(:each) do
    assign(:audios, [
      stub_model(Audio),
      stub_model(Audio)
    ])
  end

  it "renders a list of audios" do
    render
  end
end
