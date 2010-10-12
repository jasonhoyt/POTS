class Project < ActiveRecord::Base
	has_many :project_line_items, :dependent => :destroy
	
	validates :title, :presence => true
	validates :title, :uniqueness => true
	
end
