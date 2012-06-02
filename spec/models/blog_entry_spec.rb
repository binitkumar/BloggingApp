require 'spec_helper'

describe BlogEntry do
  before(:each) do
    @blog_entry = BlogEntry.new
  end
  
  it "should have db column subject" do
    @blog_entry.should have_db_column(:subject)
  end
  it "should have db column content" do
    @blog_entry.should have_db_column(:content)
  end
  it "should have db column user_id" do
    @blog_entry.should have_db_column(:user_id)
  end
  it "should belong to a user" do
    @blog_entry.should belong_to(:owner)
  end
  
  it "should validate presence of subject" do
    @blog_entry.should validate_presence_of(:subject)
  end
  it "should validate presence of content" do
    @blog_entry.should validate_presence_of(:content)
  end
end
