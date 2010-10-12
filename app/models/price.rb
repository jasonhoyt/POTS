class Price < ActiveRecord::Base
	belongs_to :product
	belongs_to :vendor
	
	validates :product_id, :vendor_id, :quote_price, :presence => true
	validates :quote_price, :numericality => {:greater_than_or_equal_to => 0.01}
end
