class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

    def current_user
      @current_user ||= Student.find_by(id:session[:student_id]) if session[:student_id]
    end
    helper_method :current_user

    def authenticate_user!
      redirect_to "/students" 
    end

    def restrict_login
      
    end

end