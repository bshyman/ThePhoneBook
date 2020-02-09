class Listing < ApplicationRecord
  belongs_to :phone
  validates_presence_of :headline, :price, :description
  mount_uploaders :listing_photos, ListingPhotoUploader
  
  has_many :comments
  
  enum status:[:draft, :active, :pending, :complete]
  def self.formatted_select
    statuses.map{|status, _|[status.upcase, status.to_sym]}
  end
end
