require 'spec_helper'

describe "titles/index" do
  before(:each) do
    assign(:titles, [
      stub_model(Title,
        :name => "Name",
        :short_name => "Short Name"
      ),
      stub_model(Title,
        :name => "Name",
        :short_name => "Short Name"
      )
    ])
  end

  it "renders a list of titles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short Name".to_s, :count => 2
  end
end
