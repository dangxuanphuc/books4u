class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :alias, null: false
      t.string :full_name, null: false

      t.timestamps
    end
  end
end
