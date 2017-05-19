class OffersController < ApplicationController
  def index
    @offers = Offer.all
    render :index
  end

  def show
    @offer = Offer.find(params[:id])
    render :show
  end

  def new
    @offer = Offer.new
    render :new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offers_path
    else
      render :new
    end
  end

  def edit
    @offer = Offer.find(params[:id])
    render :edit
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to offers_path
  end 

  private
    def offer_params
      params.require(:offer).permit(:name, :savings, :validity)
    end

end
