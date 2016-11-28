class Cart < ActiveRecord::Base
	has_many :cartdetails
  has_many :products, :through => :cartdetail
  belongs_to :user
  
  def total_price
    cartdetails.to_a.sum(&:full_price)
  end

end
