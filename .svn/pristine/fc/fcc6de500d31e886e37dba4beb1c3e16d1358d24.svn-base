require 'spec_helper'

describe "minimum_requirements/index" do
  before(:each) do
    assign(:minimum_requirements, [
      stub_model(MinimumRequirement,
        :name => "Name"
      ),
      stub_model(MinimumRequirement,
        :name => "Name"
      )
    ])
  end

  it "renders a list of minimum_requirements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
