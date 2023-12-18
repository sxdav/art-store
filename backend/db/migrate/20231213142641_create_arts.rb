class CreateArts < ActiveRecord::Migration[7.1]
  def change
    create_table :arts do |t|
      t.string :title, null: false
      t.references :artist, null: false, foreign_key: true
      t.string :art_type, null: false
      t.string :paint_type, null: false
      t.string :surface_type, null: false
      t.integer :year, null: false
      t.integer :width, null: false
      t.integer :height, null: false
      t.text :description, null: false
      t.integer :price, null: false
    end
  end
end
