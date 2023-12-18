class CreateCostumers < ActiveRecord::Migration[7.1]
  def change
    create_table :costumers do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :password_salt, null: false
      t.string :password_hash, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :born_at, null: false

      t.timestamps
    end
  end
end
