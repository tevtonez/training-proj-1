class Item < ActiveRecord::Base
  has_one :product
  belongs_to :list
end
