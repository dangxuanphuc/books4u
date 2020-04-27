class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
