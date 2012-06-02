require 'spec_helper'

describe "blog_entries/edit" do
  before(:each) do
    @blog_entry = assign(:blog_entry, stub_model(BlogEntry,
      :subject => "MyString",
      :content => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit blog_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blog_entries_path(@blog_entry), :method => "post" do
      assert_select "input#blog_entry_subject", :name => "blog_entry[subject]"
      assert_select "textarea#blog_entry_content", :name => "blog_entry[content]"
      assert_select "input#blog_entry_user_id", :name => "blog_entry[user_id]"
    end
  end
end
