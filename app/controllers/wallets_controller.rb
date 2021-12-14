class WalletsController < ApplicationController
  before_action :authenticate_user!


  def show
  end


  def create
    wallet_params = params.require(wallet).permit(:user_id, :total_amount, :carts)
    @wallet = Wallet.new(wallet_params)
  end


  def add_money
    @wallet = current_user.wallet
    @wallet.update(total_amount: @wallet.total_amount + current_basket.subtotal)
    @wallet.carts << current_basket.subtotal
    session.delete(:basket_id)
    redirect_to "/wallet" 
  end

private
  def wallet_params
    params.require(:wallet).permit(:user_id, :total_amount, :carts)
  end

end

