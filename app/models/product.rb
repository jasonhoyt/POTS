class Product < ActiveRecord::Base
	belongs_to :category
	belongs_to :vendor
	has_many :prices
	has_many :project_line_items
	has_many :attachments
	
	validates :description, :category_id, :presence => true
		
end
