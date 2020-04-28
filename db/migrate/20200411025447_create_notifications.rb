class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.text :content
      t.boolean :read, default: false
      t.string :link_to
      t.string :raw
      t.string :target
      t.integer :target_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
