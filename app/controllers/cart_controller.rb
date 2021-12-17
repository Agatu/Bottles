class CartController < ApplicationController
  before_action :authenticate_user!

  def show
      @basket_items = current_basket.basket_items
  end
end
