class OffersController < ApplicationController
  def index
    @offers = Offer.all
    render :index
  end
end 
