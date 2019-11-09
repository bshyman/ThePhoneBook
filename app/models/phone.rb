class Phone < ApplicationRecord
  has_many :phone_tranzactions
  has_many :listings
  has_and_belongs_to_many :tranzactions, through: :phone_tranzactions

  def select_option
   model.split.last.upcase + ':' + capacity + ':' + imei.to_s
   # +color&.to_s + ':' # +' - ' + original_carrier
  end
  
end
