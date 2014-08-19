require 'spec_helper'

describe "minimum_requirements/new" do
  before(:each) do
    assign(:minimum_requirement, stub_model(MinimumRequirement,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new minimum_requirement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => minimum_requirements_path, :method => "post" do
      assert_select "input#minimum_requirement_name", :name => "minimum_requirement[name]"
    end
  end
end
