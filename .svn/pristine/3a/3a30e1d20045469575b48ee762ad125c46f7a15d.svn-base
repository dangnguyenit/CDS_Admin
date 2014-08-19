require 'spec_helper'

describe "slots/new" do
  before(:each) do
    assign(:slot, stub_model(Slot,
      :name => "MyString",
      :description => "MyText",
      :level => nil
    ).as_new_record)
  end

  it "renders new slot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => slots_path, :method => "post" do
      assert_select "input#slot_name", :name => "slot[name]"
      assert_select "textarea#slot_description", :name => "slot[description]"
      assert_select "input#slot_level", :name => "slot[level]"
    end
  end
end
