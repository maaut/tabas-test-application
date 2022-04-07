class Property < ApplicationRecord
  validates :name, :presence => true
  has_many_attached :images
end
