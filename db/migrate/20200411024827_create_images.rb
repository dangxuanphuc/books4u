class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.integer :target_id, null: false
      t.string :target_type, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
