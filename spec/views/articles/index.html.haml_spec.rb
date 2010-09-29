require 'spec_helper'

describe "articles/index.html.haml" do
  before(:each) do
    assign(:articles, [
      stub_model(Article),
      stub_model(Article)
    ])
  end

  it "renders a list of articles" do
    render
  end
end
