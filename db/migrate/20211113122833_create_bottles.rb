class CreateBottles < ActiveRecord::Migration[6.1]
  def change
    create_table :bottles do |t|
      t.string :material
      t.string :size
      t.decimal :price

      t.timestamps
    end
  end
end
