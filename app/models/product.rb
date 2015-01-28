class Product < ActiveRecord::Base
  belongs_to :item
  validates :article, uniqueness: { message: "Title had been used already. Choose different Title for it."}
  validates_presence_of :article, message: "(Product Title) cannot be blank."
end
