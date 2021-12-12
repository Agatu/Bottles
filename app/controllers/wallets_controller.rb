class WalletsController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def update
    @wallet = wallet[:user_id].add_money
  end


  def add_money
    @wallet = wallet.find(params[:id])
    @wallet = wallet.total_amount + current_basket.subtotal
  end






  # def create
  #    wallet_params = params.require(:wallet).permit(:name, :email_address, :total_amount)
  #    @wallet = Wallet.new(wallet_params)

  #    if @wallet.save
  #      flash[:komunikat] = 'Portfel został poprawnie stworzony.'
  #      redirect_to "/walltes/#{@wallet.id}"
  #    else
  #      render 'new'
  #    end
  # end

end

