class Offer < ApplicationRecord
  belongs_to :company
  has_many :postulants
end
