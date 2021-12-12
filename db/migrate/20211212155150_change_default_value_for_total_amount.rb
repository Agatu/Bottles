class ChangeDefaultValueForTotalAmount < ActiveRecord::Migration[6.1]
  def change
    change_column :wallets, :total_amount, :decimal, :default => 0
  end
end
