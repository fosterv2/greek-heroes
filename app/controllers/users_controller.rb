class UsersController < ApplicationController
    def home
        require_logged_in
        current_user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/'
        else
            flash[:messages] = "Error!"
            redirect_to new_user_path
        end
    end
     
    private
     
    def user_params
        params.require(:user).permit(:full_name, :username, :password, :password_confirmation)
    end
end
