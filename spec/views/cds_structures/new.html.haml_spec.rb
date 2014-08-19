require 'spec_helper'

describe "cds_structures/new" do
  before(:each) do
    assign(:cds_structure, stub_model(CdsStructure,
      :name => "MyString",
      :level => 1,
      :parent_id => 1
    ).as_new_record)
  end

  it "renders new cds_structure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cds_structures_path, :method => "post" do
      assert_select "input#cds_structure_name", :name => "cds_structure[name]"
      assert_select "input#cds_structure_level", :name => "cds_structure[level]"
      assert_select "input#cds_structure_parent_id", :name => "cds_structure[parent_id]"
    end
  end
end
