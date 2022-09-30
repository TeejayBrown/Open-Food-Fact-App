class Product < ApplicationRecord
  belongs_to :manufacturing_country

  validates :product_name, :url, :brand, :bar_code, :thumbnail, :image, presence: true
  # validates :product_name, uniqueness: true
  # validates :bar_code, numericality: {only_integer: true}
end
