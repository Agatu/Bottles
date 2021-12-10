class AddUserIdToWallets < ActiveRecord::Migration[6.1]
  def change
    add_column :wallets, :User_id, :integer
    add_index :wallets, :User_id
  end
end
