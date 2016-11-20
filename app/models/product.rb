class Product < ApplicationRecord
	has_one :order_detail
	has_many :classifies
	has_many :categories, :through => :classifies
	validates :name, presence: true
end
