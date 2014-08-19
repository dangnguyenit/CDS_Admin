require 'spec_helper'

describe "minimum_requirements/show" do
  before(:each) do
    @minimum_requirement = assign(:minimum_requirement, stub_model(MinimumRequirement,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
