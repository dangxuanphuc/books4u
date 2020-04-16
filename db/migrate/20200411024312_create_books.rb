class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :isbn, null: false
      t.integer :series_id, null: true
      t.string :dimension
      t.integer :pages
      t.string :weight
      t.string :title, null: false
      t.text :description
      t.datetime :public_date
      t.float :rate
      t.integer :rate_count
      t.references :publisher, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
