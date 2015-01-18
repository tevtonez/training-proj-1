class Product < ActiveRecord::Base
  belongs_to :place
  belongs_to :item
end
