class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :product, index: true
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
