class Vendor < ActiveRecord::Base
	has_many :products
	has_many :prices
	
	validates :company_name, :presence => true
	validates :company_name, :uniqueness => true
	
end
