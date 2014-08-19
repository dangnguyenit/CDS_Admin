require 'spec_helper'

describe "titles/new" do
  before(:each) do
    assign(:title, stub_model(Title,
      :name => "MyString",
      :short_name => "MyString"
    ).as_new_record)
  end

  it "renders new title form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => titles_path, :method => "post" do
      assert_select "input#title_name", :name => "title[name]"
      assert_select "input#title_short_name", :name => "title[short_name]"
    end
  end
end
