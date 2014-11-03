class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :item, index: true
      t.references :supplier, index: true
      t.integer :quantity
      t.float :sale_price

      t.timestamps
    end
  end
end
