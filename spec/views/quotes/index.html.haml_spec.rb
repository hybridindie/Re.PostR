require 'spec_helper'

describe "quotes/index.html.haml" do
  before(:each) do
    assign(:quotes, [
      stub_model(Quote),
      stub_model(Quote)
    ])
  end

  it "renders a list of quotes" do
    render
  end
end
