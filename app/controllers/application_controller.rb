class ApplicationController < ActionController::Base

    before_action :current_user
    before_action :authorized


    def current_user
        #User.find_by(id: session[:user_id])
        @current_user = User.find_by(id: session[:user_id])
    end

    def authorized
        redirect_to new_user_path unless @current_user
      end 


end
