class OffersController < ApplicationController
  def create
    @shop = Shop.find(params[:shop_id])
    @offer = @shop.offers.new(offer_params)

    if @offer.save
      redirect_to shop_path(@offer.shop)
    else
      render :new
    end
  end

  def new
    @shop = Shop.find(params[:shop_id])
    @offer = @shop.offers.new
  end

  private
    def offer_params
      params.require(:offer).permit(:name, :savings, :validity)
    end
end
