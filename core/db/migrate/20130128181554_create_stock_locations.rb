class CreateStockLocations < ActiveRecord::Migration
  def change
    create_table :spree_stock_locations do |t|
      t.string :name

      t.timestamps
    end
  end
end
