class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        find_user
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        if user.valid?
            redirect_to user_path(user)
        else
            flash[:user_errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
        find_user
    end

    def update
        find_user
        if @user.valid?
            @user.update(user_params)
            redirect_to user_path(@user)
        else
            flash[:user_errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def destroy
        find_user
        @user.destroy
        redirect_to users_path
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :years_experience)
    end


end

