class Listing < ApplicationRecord
  validates_presence_of :headline, :price, :description
  belongs_to :phone
  mount_uploaders :listing_photos, ListingPhotoUploader
end
