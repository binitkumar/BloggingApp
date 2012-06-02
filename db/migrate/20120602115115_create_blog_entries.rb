class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :subject
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
