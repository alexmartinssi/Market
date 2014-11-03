class RemoveQuantityPriceFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :quantity, :price
  end
end
