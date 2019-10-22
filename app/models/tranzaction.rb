class Tranzaction < ApplicationRecord
  has_many :phone_tranzactions
  has_and_belongs_to_many :phones, through: :phone_tranzactions
end
