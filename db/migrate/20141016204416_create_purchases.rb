class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :item, index: true
      t.float :total
      t.references :supplier, index: true

      t.timestamps
    end
  end
end
