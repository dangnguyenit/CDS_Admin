require 'spec_helper'

describe "competencies/index" do
  before(:each) do
    assign(:competencies, [
      stub_model(Competency,
        :name => "Name"
      ),
      stub_model(Competency,
        :name => "Name"
      )
    ])
  end

  it "renders a list of competencies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
