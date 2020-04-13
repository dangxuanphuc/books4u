class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :target_id, null: false
      t.string :target_type, null: false
      t.integer :parent_id
      t.string :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
