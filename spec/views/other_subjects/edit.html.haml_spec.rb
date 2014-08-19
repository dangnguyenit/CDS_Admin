require 'spec_helper'

describe "other_subjects/edit" do
  before(:each) do
    @other_subject = assign(:other_subject, stub_model(OtherSubject,
      :name => "MyString",
      :scoring_scale => nil
    ))
  end

  it "renders the edit other_subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => other_subjects_path(@other_subject), :method => "post" do
      assert_select "input#other_subject_name", :name => "other_subject[name]"
      assert_select "input#other_subject_scoring_scale", :name => "other_subject[scoring_scale]"
    end
  end
end
