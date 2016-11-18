class Category < ApplicationRecord
	has_many :classifies
	has_many :products, :through => :classifies
end
