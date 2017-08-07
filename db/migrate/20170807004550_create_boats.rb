class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :manufacturer
      t.string :model
      t.integer :price
      t.decimal :lwl, precision: 2
      t.decimal :beam, precision: 2
      t.integer :displacement
      t.integer :ballast

      t.timestamps null: false
    end
  end
end
