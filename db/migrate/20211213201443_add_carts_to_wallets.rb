class AddCartsToWallets < ActiveRecord::Migration[6.1]
  def change
    add_column :wallets, :carts, :decimal
  end
end
