class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :blog_entry_id
      t.text :content

      t.timestamps
    end
  end
end
