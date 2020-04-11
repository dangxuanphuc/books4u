class CreateBlogBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_books do |t|
      t.references :blog, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
