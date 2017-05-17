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

end
