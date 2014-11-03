class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :item, index: true
      t.float :total

      t.timestamps
    end
  end
end
