class Part < ActiveRecord::Base
  attr_accessible :blog_entry_id, :content
  belongs_to :blog_entry
end
