require 'spec_helper'

describe "scoring_scales/index" do
  before(:each) do
    assign(:scoring_scales, [
      stub_model(ScoringScale,
        :name => "Name",
        :description => "MyText",
        :type => 1,
        :score => "Score",
        :explanation => "Explanation"
      ),
      stub_model(ScoringScale,
        :name => "Name",
        :description => "MyText",
        :type => 1,
        :score => "Score",
        :explanation => "Explanation"
      )
    ])
  end

  it "renders a list of scoring_scales" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Score".to_s, :count => 2
    assert_select "tr>td", :text => "Explanation".to_s, :count => 2
  end
end
