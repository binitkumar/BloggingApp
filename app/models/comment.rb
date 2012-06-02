class Comment < ActiveRecord::Base
  attr_accessible :blog_entry_id, :content, :user_id
  belongs_to :blog_entry
  belongs_to :user
end
