class CreateSuggestBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :suggest_books do |t|
      t.integer :sender_id, null: false
      t.integer :receiver_id, null: false
      t.string :content
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
