class BlogEntry < ActiveRecord::Base
  attr_accessible :content, :subject, :user_id
  belongs_to :owner, :class_name=>"User",:foreign_key =>'user_id'
  has_many :parts
  has_many :comments
  
  validates_presence_of :subject
  
  validates_numericality_of :user_id
  
end
