class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier

  has_one_attached :image
end
