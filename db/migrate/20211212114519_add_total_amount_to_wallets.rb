class AddTotalAmountToWallets < ActiveRecord::Migration[6.1]
  def change
    add_column :wallets, :total_amount, :decimal
  end
end
