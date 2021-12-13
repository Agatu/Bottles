class WalletsController < ApplicationController
  before_action :authenticate_user!


  def show
    # @wallet = current_user.wallet
    # redirect_to "/walltes/#{@wallet.id}"
  end

  def update
    @wallet = current_user.wallet
    @wallet.add_money
    redirect_to "/wallets/#{@wallet.id}"
  end

  def create
    wallet_params = params.require(wallet).permit(:user_id, :total_amount, :carts)
    @wallet = Wallet.new(wallet_params)
  end

  def add_money
    @wallet.update(total_amount: @wallet.total_amount + current_cart.subtotal)
    @wallet.carts << current_cart
    reset_session[:basket_id]
  end

private
  def wallet_params
    params.require(:wallet).permit(:user_id, :total_amount, :carts)
  end




  def create
    event_params = params.require(:event).permit(:artist, :description,
    :price_low, :price_high, :event_date)
    @event = Event.new(event_params)
    if @event.save
    flash[:komunikat] = 'Event został poprawnie stworzony.'
    redirect_to "/events/#{@event.id}"
    else
    render 'new'
    end
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

