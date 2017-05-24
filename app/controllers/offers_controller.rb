class OffersController < ApplicationController
  before_filter :authenticate_user!

  def new
    @shop = Shop.find(params[:shop_id])
    @offer = @shop.offers.new
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @offer = @shop.offers.new(offer_params)

    if @offer.save
      redirect_to shop_path(@offer.shop)
    else
      render :new
    end
  end

  def edit
    @shop = Shop.find(params[:shop_id])
    @offer = Offer.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:shop_id])
    @offer = Offer.find(params[:id])

    if @offer.update(offer_params)
      redirect_to shop_path(@offer.shop)
    else
      render :edit
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to shop_path(@offer.shop)
  end


  private
    def offer_params
      params.require(:offer).permit(:name, :savings, :validity)
    end
end
