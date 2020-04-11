class CreateUserSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_settings do |t|
      t.boolean :notification_to_email, default: false , null: false
      t.integer :language
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
