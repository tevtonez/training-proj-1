class Place < ActiveRecord::Base
  has_many :products
  belongs_to :item
  
  validates :title, uniqueness: true, presence: true

  
end
