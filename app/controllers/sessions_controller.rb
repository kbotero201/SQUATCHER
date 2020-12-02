class SessionsController < ApplicationController

    def destroy
    # def logout
        session.delete[:user_id]
        redirect_to new_user_path
    end 

    def new
    end 

    def login
        user = User.find_by(name: params[:session][:name] )

        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_path(user.id)
        else
            flash[:errors] = 'user name or password does not match'
            redirect_to new_login_path
        end 
    end 
end 