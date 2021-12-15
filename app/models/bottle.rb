class Bottle < ApplicationRecord

validates :material, :presence => true
validates :size, :presence => true
validates :price, :presence => true

has_one_attached :image, dependent: :destroy
has_many :basket_items

end
