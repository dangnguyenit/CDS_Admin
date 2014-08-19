require 'spec_helper'

describe "levels/index" do
  before(:each) do
    assign(:levels, [
      stub_model(Level,
        :name => "Name",
        :title => nil
      ),
      stub_model(Level,
        :name => "Name",
        :title => nil
      )
    ])
  end

  it "renders a list of levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
