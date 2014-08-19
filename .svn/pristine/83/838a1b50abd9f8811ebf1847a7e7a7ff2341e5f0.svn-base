require 'spec_helper'

describe "titles/edit" do
  before(:each) do
    @title = assign(:title, stub_model(Title,
      :name => "MyString",
      :short_name => "MyString"
    ))
  end

  it "renders the edit title form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => titles_path(@title), :method => "post" do
      assert_select "input#title_name", :name => "title[name]"
      assert_select "input#title_short_name", :name => "title[short_name]"
    end
  end
end
