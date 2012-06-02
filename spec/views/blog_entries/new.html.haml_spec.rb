require 'spec_helper'

describe "blog_entries/new" do
  before(:each) do
    assign(:blog_entry, stub_model(BlogEntry,
      :subject => "MyString",
      :content => "MyText",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new blog_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blog_entries_path, :method => "post" do
      assert_select "input#blog_entry_subject", :name => "blog_entry[subject]"
      assert_select "textarea#blog_entry_content", :name => "blog_entry[content]"
      assert_select "input#blog_entry_user_id", :name => "blog_entry[user_id]"
    end
  end
end
