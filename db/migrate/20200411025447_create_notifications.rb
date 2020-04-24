class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.text :content
      t.integer :type
      t.boolean :read, default: false
      t.string :link_to
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
