require 'spec_helper'

describe "links/edit.html.haml" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :new_record? => false
    ))
  end

  it "renders the edit link form" do
    render

    rendered.should have_selector("form", :action => link_path(@link), :method => "post") do |form|
    end
  end
end
