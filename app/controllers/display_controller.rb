class DisplayController < ApplicationController
	helper_method :sort_column, :sort_direction
	
  def index
  	@title = "Product Listing"
  	@products = Product.order(sort_column + " " + sort_direction) # tweaked
  end
  
  private
  
  def sort_column
    Product.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
  
end
