class CreateAnnouncements < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements do |t|
      t.text :title
      t.text :content
      t.integer :admin_id, null: false

      t.timestamps
    end
  end
end
