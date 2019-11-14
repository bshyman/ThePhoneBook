class ListingsController < ApplicationController
  load_resource except: [:index]
  def index
    @listings = Listing.active
    @listings = Listing.all if params[:scope] == 'all'
  end
  
  def new
    @phones = Phone.all.order(updated_at: :desc)
  end
  
  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listings_path, notice: 'New Listing Saved'
    else
      flash[:error] = @listing.errors.full_messages.join(', ')
      redirect_to new_listing_path
    end
  end
  
  def edit
  end
  
  def update
    if @listing.update!(listing_params)
      redirect_to listing_path, notice: 'Saved Changes.'
    else
      redirect_to listing_path, error: 'Fail'
    end
    
  end
  def listing_params
    params.require(:listing).permit(:headline, :description, :fine_print, :price, :free_shipping, :phone_id, listing_photos: [])
  end
end
