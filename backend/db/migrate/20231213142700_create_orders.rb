class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :status, null: false
      t.integer :price, null: false
      t.references :costumer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
