require 'spec_helper'

describe "competencies/edit" do
  before(:each) do
    @competency = assign(:competency, stub_model(Competency,
      :name => "MyString"
    ))
  end

  it "renders the edit competency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => competencies_path(@competency), :method => "post" do
      assert_select "input#competency_name", :name => "competency[name]"
    end
  end
end