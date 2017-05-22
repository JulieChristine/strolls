class OffersController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @offer = @shop.offers.new
  end
end
