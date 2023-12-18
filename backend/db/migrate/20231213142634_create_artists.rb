class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :photo_link, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.text :description, null: false
    end
  end
end
