class Item < ActiveRecord::Base
  belongs_to :list
  has_many :products
  has_many :places
end
  
## getting product name
def product_name(id)
  item_product_id = Item.find(id)[:product_id]
  product_name = Product.find(item_product_id)[:article]
  return product_name
end

## getting place name
def place_name(id)
  item_place_id = Item.find(id)[:place_id]
  place_name = Place.find(item_place_id)[:title]
  return place_name
end

