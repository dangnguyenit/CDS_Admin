require 'spec_helper'

describe "other_subjects/new" do
  before(:each) do
    assign(:other_subject, stub_model(OtherSubject,
      :name => "MyString",
      :scoring_scale => nil
    ).as_new_record)
  end

  it "renders new other_subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => other_subjects_path, :method => "post" do
      assert_select "input#other_subject_name", :name => "other_subject[name]"
      assert_select "input#other_subject_scoring_scale", :name => "other_subject[scoring_scale]"
    end
  end
end
