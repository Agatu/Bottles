class Basket < ApplicationRecord
    has_many :basket_items
    before_save :set_subtotal

    def subtotal
        basket_items.collect {|basket_item| basket_item.valid? ? basket_item.unit_price * basket_item.quantity : 0}.sum
    end

    private
    def set_subtotal
        self[:subtotal] = subtotal
    end
end