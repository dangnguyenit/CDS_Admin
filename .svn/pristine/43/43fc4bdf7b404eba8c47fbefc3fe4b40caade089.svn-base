require 'spec_helper'

describe "cds_templates/index" do
  before(:each) do
    assign(:cds_templates, [
      stub_model(CdsTemplate,
        :name => "Name",
        :status => "Status"
      ),
      stub_model(CdsTemplate,
        :name => "Name",
        :status => "Status"
      )
    ])
  end

  it "renders a list of cds_templates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
