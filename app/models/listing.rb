class Listing < ApplicationRecord
  belongs_to :phone
  validates_presence_of :headline, :price, :description
  mount_uploaders :listing_photos, ListingPhotoUploader
  
  enum status:[:draft, :active, :pending, :complete]
end
