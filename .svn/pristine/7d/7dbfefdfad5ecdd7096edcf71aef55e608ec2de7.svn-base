require 'spec_helper'

describe "cds_templates/new" do
  before(:each) do
    assign(:cds_template, stub_model(CdsTemplate,
      :name => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new cds_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cds_templates_path, :method => "post" do
      assert_select "input#cds_template_name", :name => "cds_template[name]"
      assert_select "input#cds_template_status", :name => "cds_template[status]"
    end
  end
end
