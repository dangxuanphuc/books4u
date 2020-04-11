class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :request_type, default: 0, null: false
      t.string :link
      t.integer :status, default: 0, null: false
      t.text :content
      t.integer :admin_approve_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
