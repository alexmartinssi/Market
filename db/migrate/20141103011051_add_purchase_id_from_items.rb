class AddPurchaseIdFromItems < ActiveRecord::Migration
  def change
    add_reference :items, :purchase, index: true
  end
end
