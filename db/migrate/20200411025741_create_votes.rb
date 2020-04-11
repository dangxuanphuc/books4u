class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :target_id, null: false
      t.string :target_type, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
