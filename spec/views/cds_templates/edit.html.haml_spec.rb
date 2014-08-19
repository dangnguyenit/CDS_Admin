require 'spec_helper'

describe "cds_templates/edit" do
  before(:each) do
    @cds_template = assign(:cds_template, stub_model(CdsTemplate,
      :name => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit cds_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cds_templates_path(@cds_template), :method => "post" do
      assert_select "input#cds_template_name", :name => "cds_template[name]"
      assert_select "input#cds_template_status", :name => "cds_template[status]"
    end
  end
end
