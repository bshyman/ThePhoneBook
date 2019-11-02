class Phone < ApplicationRecord
  has_many :phone_tranzactions
  has_many :listings
  has_and_belongs_to_many :tranzactions, through: :phone_tranzactions
  
end
