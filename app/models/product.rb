class Product < ActiveRecord::Base
	belongs_to :category
	belongs_to :vendor
	has_many :prices
	has_many :project_line_items
	has_many :attachments
	
	validates :description, :category_id, :presence => true
	
	before_destroy :ensure_not_referenced_by_project_line_item
	
	def ensure_not_referenced_by_project_line_item
		if project_line_items.count.zer?
			return true
		else
			error[:base] << "Product Line Items present"
			return false
		end
	end
			
end
