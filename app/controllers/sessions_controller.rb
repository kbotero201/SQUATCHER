class SessionsController < ApplicationController
      
    def logout
      session.delete(:user_id)
      redirect_to new_login_path
    end 
  
    def new 
    end 
  

    def login
      user = User.find_by(name: params[:session][:name])
  
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        flash[:errors] = "Username or Password does not match" 
        redirect_to new_login_path
      end 
    end 
  
end