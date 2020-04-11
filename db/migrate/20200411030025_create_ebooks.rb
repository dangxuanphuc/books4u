class CreateEbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :ebooks do |t|
      t.string :format, null: false
      t.string :link, null: false
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
