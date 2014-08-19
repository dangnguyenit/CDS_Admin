require 'spec_helper'

describe "scoring_scales/show" do
  before(:each) do
    @scoring_scale = assign(:scoring_scale, stub_model(ScoringScale,
      :name => "Name",
      :description => "MyText",
      :type => 1,
      :score => "Score",
      :explanation => "Explanation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Score/)
    rendered.should match(/Explanation/)
  end
end
