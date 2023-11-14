class Product < ApplicationRecord
    has_many :cartitems
    has_many :cartitem_carts, through: :cartitems, source: :cart
end
