class ShopsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      flash[:notice] = "Shop successfully added!"
      redirect_to shops_path(@shop)
    else
      render :new
    end
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    flash[:notice] = "The shop has been deleted"
    redirect_to shops_path
  end

  private
    def shop_params
      params.require(:shop).permit(:name, :address, :area, :description, :picture, :opening_hours, :location, :website )
    end

end
