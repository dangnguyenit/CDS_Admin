require 'spec_helper'

describe "titles/show" do
  before(:each) do
    @title = assign(:title, stub_model(Title,
      :name => "Name",
      :short_name => "Short Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Short Name/)
  end
end
