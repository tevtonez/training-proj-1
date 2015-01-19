class Item < ActiveRecord::Base
  belongs_to :list
  has_many :products
  has_many :places
  
  #attr_accessible :product_id
  #attr_accessible :place_id

end

