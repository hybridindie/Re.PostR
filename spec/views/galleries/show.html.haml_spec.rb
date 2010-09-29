require 'spec_helper'

describe "galleries/show.html.haml" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery))
  end

  it "renders attributes in <p>" do
    render
  end
end
