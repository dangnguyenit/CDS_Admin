require 'spec_helper'

describe "competencies/show" do
  before(:each) do
    @competency = assign(:competency, stub_model(Competency,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
