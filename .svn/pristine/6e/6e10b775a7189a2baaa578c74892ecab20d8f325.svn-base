require 'spec_helper'

describe "other_subjects/index" do
  before(:each) do
    assign(:other_subjects, [
      stub_model(OtherSubject,
        :name => "Name",
        :scoring_scale => nil
      ),
      stub_model(OtherSubject,
        :name => "Name",
        :scoring_scale => nil
      )
    ])
  end

  it "renders a list of other_subjects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
