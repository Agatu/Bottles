class WalletsController < ApplicationController
  # before_action :set_wallet, only: %i[ edit update destroy ]


  def show
    @wallet = wallet[:user_id]
  
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

