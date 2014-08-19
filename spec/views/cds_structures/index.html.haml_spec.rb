require 'spec_helper'

describe "cds_structures/index" do
  before(:each) do
    assign(:cds_structures, [
      stub_model(CdsStructure,
        :name => "Name",
        :level => 1,
        :parent_id => 2
      ),
      stub_model(CdsStructure,
        :name => "Name",
        :level => 1,
        :parent_id => 2
      )
    ])
  end

  it "renders a list of cds_structures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end