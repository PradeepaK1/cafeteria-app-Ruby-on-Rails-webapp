class ApplicationController < ActionController::Base
    include ApplicationHelper
    http_basic_authenticate_with name: 'admin', password: 'admin', except: [:index, :show]
    helper_method :current_user
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

end
