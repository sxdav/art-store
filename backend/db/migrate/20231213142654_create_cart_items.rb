class CreateCartItems < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_items do |t|
      t.references :art, null: false, foreign_key: true
      t.references :costumer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
