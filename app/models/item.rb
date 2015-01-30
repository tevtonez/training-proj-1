class Item < ActiveRecord::Base
  belongs_to :list
  has_many :products
  has_many :places
  
  validates_presence_of :product_id, :place_id, :list_id, message: "One of the IDs wasn't sent"
  
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

## getting list ID
def current_list_id(id)
  #list_id = id
end