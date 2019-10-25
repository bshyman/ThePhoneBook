class Listing < ApplicationRecord
  validates_presence_of :headline, :price, :description
  belongs_to :phone
end
