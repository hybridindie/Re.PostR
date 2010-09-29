require 'spec_helper'

describe "quotes/new.html.haml" do
  before(:each) do
    assign(:quote, stub_model(Quote,
      :new_record? => true
    ))
  end

  it "renders new quote form" do
    render

    rendered.should have_selector("form", :action => quotes_path, :method => "post") do |form|
    end
  end
end
