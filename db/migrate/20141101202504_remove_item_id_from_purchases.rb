class RemoveItemIdFromPurchases < ActiveRecord::Migration
  def change
    remove_column :purchases, :item_id
  end
end
