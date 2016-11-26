class Product < ActiveRecord::Base
	has_one :order_detail
	#has_many :classifies
	#has_many :categories, :through => :classifies 
	validates :name, presence: true
	has_many :active_classifies, class_name: "Classify", foreign_key: "product_id"
	has_many :incategory, through: :active_classifies, source: :category #as followed



	def self.search(id , search)
		if(id == 1)
			category1 = Category.find_by_id(id)
		else
			return Product.all
		end
		if (search)
			searchdc = search.downcase
			product = category1.groupcategory		
			words = searchdc.split(/[^[[:word:]]]+/)
			for word in words
				product = product.select{ |e| e.name.downcase.include? word}
			end
			return product
		else
			return Product.all
		end
	end


end
