class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.text :content
      t.string :description
      t.integer :status, default: 0
      t.string :title, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
