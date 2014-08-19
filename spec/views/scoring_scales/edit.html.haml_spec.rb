require 'spec_helper'

describe "scoring_scales/edit" do
  before(:each) do
    @scoring_scale = assign(:scoring_scale, stub_model(ScoringScale,
      :name => "MyString",
      :description => "MyText",
      :type => 1,
      :score => "MyString",
      :explanation => "MyString"
    ))
  end

  it "renders the edit scoring_scale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scoring_scales_path(@scoring_scale), :method => "post" do
      assert_select "input#scoring_scale_name", :name => "scoring_scale[name]"
      assert_select "textarea#scoring_scale_description", :name => "scoring_scale[description]"
      assert_select "input#scoring_scale_type", :name => "scoring_scale[type]"
      assert_select "input#scoring_scale_score", :name => "scoring_scale[score]"
      assert_select "input#scoring_scale_explanation", :name => "scoring_scale[explanation]"
    end
  end
end
