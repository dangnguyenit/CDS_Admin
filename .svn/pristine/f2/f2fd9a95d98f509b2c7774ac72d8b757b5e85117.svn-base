require 'spec_helper'

describe "minimum_requirements/edit" do
  before(:each) do
    @minimum_requirement = assign(:minimum_requirement, stub_model(MinimumRequirement,
      :name => "MyString"
    ))
  end

  it "renders the edit minimum_requirement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => minimum_requirements_path(@minimum_requirement), :method => "post" do
      assert_select "input#minimum_requirement_name", :name => "minimum_requirement[name]"
    end
  end
end
