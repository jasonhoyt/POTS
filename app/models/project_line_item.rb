class ProjectLineItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :project
	
	validates :product_id, :project_id, :quantity, :presence => true
	validates :quantity, :numericality => {:greater_than_or_equal_to => 0.01}
	
end
