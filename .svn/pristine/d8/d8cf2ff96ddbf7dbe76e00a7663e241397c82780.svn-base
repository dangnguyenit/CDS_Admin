require 'spec_helper'

describe "cds_structures/show" do
  before(:each) do
    @cds_structure = assign(:cds_structure, stub_model(CdsStructure,
      :name => "Name",
      :level => 1,
      :parent_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
