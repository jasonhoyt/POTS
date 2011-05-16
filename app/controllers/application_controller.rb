class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #USER_NAME, PASSWORD = "jason", "something dumb"

  #before_filter :authenticate
  before_filter :authenticate_user!, :except => [:show, :index]
  
  private
    #  def authenticate
    #    authenticate_or_request_with_http_basic do |user_name, password|
    #      user_name == USER_NAME && password == PASSWORD
    #    end
    #  end
  
  def current_project
  	Project.find(session[:project_id])
  rescue ActiveRecord::RecordNotFound
  	project = Project.find('1')   			# not correct, redirect to selecting project
  	# project = Project.find(params[:id])   # not correct
    session[:project_id] = project.id
  	project
  end

end
