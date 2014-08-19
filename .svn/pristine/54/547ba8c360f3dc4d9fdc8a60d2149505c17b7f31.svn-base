require 'spec_helper'

describe "other_subjects/show" do
  before(:each) do
    @other_subject = assign(:other_subject, stub_model(OtherSubject,
      :name => "Name",
      :scoring_scale => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
