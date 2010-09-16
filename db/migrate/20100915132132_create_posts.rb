class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :author_id
      t.datetime :created_at
      t.datetime :updated_at
      t.text :post_data
      t.string :post_status
      t.string :post_type

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
