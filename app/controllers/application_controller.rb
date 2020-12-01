class ApplicationController < ActionController::Base

    before_action :current_user


    def current_user
        #User.find_by(id: session[:user_id])
        @current_user = User.find_by(id: session[:user_id])
    end


end
