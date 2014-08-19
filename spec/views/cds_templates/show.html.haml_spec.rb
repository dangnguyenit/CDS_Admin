require 'spec_helper'

describe "cds_templates/show" do
  before(:each) do
    @cds_template = assign(:cds_template, stub_model(CdsTemplate,
      :name => "Name",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Status/)
  end
end
