require 'spec_helper'

describe "cds_structures/edit" do
  before(:each) do
    @cds_structure = assign(:cds_structure, stub_model(CdsStructure,
      :name => "MyString",
      :level => 1,
      :parent_id => 1
    ))
  end

  it "renders the edit cds_structure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cds_structures_path(@cds_structure), :method => "post" do
      assert_select "input#cds_structure_name", :name => "cds_structure[name]"
      assert_select "input#cds_structure_level", :name => "cds_structure[level]"
      assert_select "input#cds_structure_parent_id", :name => "cds_structure[parent_id]"
    end
  end
end
