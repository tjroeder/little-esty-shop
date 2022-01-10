class Admin::MerchantsController < ApplicationController


  def index
    @merchants = Merchant.all
    @enabled_merchants = Merchant.enabled_merchants
    @disabled_merchants = Merchant.disabled_merchants

  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def edit
    @merchant = Merchant.find(params[:id])
  end

  def update
    merchant = Merchant.find(params[:id])
    if merchant.save
      merchant.update(merchant_params)
      flash[:notice] = "The Merchant has been updated!"
      redirect_to admin_merchant_path(merchant)
    end
  end

  private
  def merchant_params
    params.require(:merchant).permit(:name)
  end
end
