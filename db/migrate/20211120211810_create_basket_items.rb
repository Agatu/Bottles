class CreateBasketItems < ActiveRecord::Migration[6.1]
  def change
    create_table :basket_items do |t|
      t.integer :quantity
      t.references :bottle, null: false, foreign_key: true
      t.references :basket, null: false, foreign_key: true
      t.decimal :total
      t.decimal :unit_price

      t.timestamps
    end
  end
end
