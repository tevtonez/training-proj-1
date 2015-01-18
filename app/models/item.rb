class Item < ActiveRecord::Base
  belongs_to :list
  has_one :product
end
