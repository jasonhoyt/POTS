class ApplicationController < ActionController::Base
  protect_from_forgery
  
  USER_NAME, PASSWORD = "jason", "syzygy"

  before_filter :authenticate
  
  private
      def authenticate
        authenticate_or_request_with_http_basic do |user_name, password|
          user_name == USER_NAME && password == PASSWORD
        end
      end
  
    
end
