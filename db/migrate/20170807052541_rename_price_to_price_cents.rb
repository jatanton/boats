class RenamePriceToPriceCents < ActiveRecord::Migration
  def change
    rename_column :boats, :price, :price_cents
  end
end
