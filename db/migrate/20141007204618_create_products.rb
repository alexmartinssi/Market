class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :bar_code
      t.string :description
      t.float :price
      t.integer :quantity
      t.references :unit, index: true
      t.references :category, index: true
      t.references :supplier, index: true

      t.timestamps
    end
  end
end
