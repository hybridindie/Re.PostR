require 'spec_helper'

describe "quotes/edit.html.haml" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :new_record? => false
    ))
  end

  it "renders the edit quote form" do
    render

    rendered.should have_selector("form", :action => quote_path(@quote), :method => "post") do |form|
    end
  end
end
