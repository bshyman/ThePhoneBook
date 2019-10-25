class ListingsController < ApplicationController
  
  def index
    @listings = Listing.all
  end
  
  def new
  end
  
  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listings_path, notice: ' New Listing Saved'
    else
      flash[:error] = @listing.errors.full_messages.join(', ')
      redirect_to new_listing_path
    end
  end
  
  def listing_params
    params.require(:listing).permit(:headline, :description, :fine_print, :price, :free_shipping)
  end
end
