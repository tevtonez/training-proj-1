class Place < ActiveRecord::Base
  has_many :products
  belongs_to :item
end
