# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'b459a0a8ce81f6adb647c985542e1a33'

  
    helper_method :current_user  
     
    private  
    def current_user_session  
      return @current_user_session if defined?(@current_user_session)  
     @current_user_session = UserSession.find  
    end  
      
    def current_user  
     @current_user = current_user_session && current_user_session.record  
   end  
  
    rescue_from CanCan::AccessDenied do |exception|  
	  logger.error("Access denied! #{exception.message}")
      flash[:error] = "Access denied!"  
      redirect_to(:action => 'index')  
    end  
  
end
