class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price, :decimal, precision: 8, scale: 2
      t.integer :num_units, default: 0
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
